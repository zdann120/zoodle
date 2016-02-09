class PollsController < ApplicationController
	
	before_action :authenticate_user!, only: [:new, :create]
	def show
		@poll = Poll.friendly.find(params[:id])
		@poll ||= Poll.find(params[:id])
		@count = 0
		@poll.choices.each do |choice|
			if choice.subscribers.count > @count
				@count = choice.subscribers.count
			end
		end
	end

	def new

		@poll = Poll.new
	end

	def create
		@poll = Poll.new(poll_params)
		@poll.uuid = SecureRandom.hex(8)
		@poll.user = current_user
		if @poll.save
			flash[:notice] = "Poll successfully added!"
			redirect_to poll_url(@poll)
		else
			flash[:notice] = "There was an error adding this poll."
			render 'new'
		end
	end

	def destroy
		@poll = Poll.friendly.find(params[:id])
		@poll.destroy
		flash[:notice] = "Poll (#{@poll.label}) destroyed."
		redirect_to root_path
	end

	private
	def poll_params
		params.require(:poll).permit(:label, :maxchoices, :uuid, :email, :choices)
	end
end
