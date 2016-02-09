class PollsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	def show
		@poll = Poll.friendly.find(params[:id])
		@poll ||= Poll.find(params[:id])
	end

	def new

		@poll = Poll.new
	end

	def create
		@poll = Poll.new(poll_params)
		@poll.uuid = SecureRandom.uuid
		@poll.user = current_user
		if @poll.save
			flash[:notice] = "Poll successfully added!"
			redirect_to poll_url(@poll)
		else
			flash[:notice] = "There was an error adding this poll."
			render 'new'
		end
	end

	private
	def poll_params
		params.require(:poll).permit(:label, :maxchoices, :uuid, :email, :choices)
	end
end
