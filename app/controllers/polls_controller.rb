class PollsController < ApplicationController
	def show
		@poll = Poll.find(params[:id])
	end

	def new
		@poll = Poll.new
	end

	def create
		@poll = Poll.new(poll_params)
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
		params.require(:poll).permit(:label, :maxchoices, :uuid, :email)
	end
end
