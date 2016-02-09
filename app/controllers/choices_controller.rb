class ChoicesController < ApplicationController
	def create
		@poll = Poll.find(params[:poll_id])
		@choice = @poll.choices.new(choice_params)
		@choice.uuid = SecureRandom.uuid
		if @choice.save
			flash[:notice] = "Choice added!"
			redirect_to poll_path(@poll)
		else
			flash[:notice] = "Error adding choice."
			redirect_to poll_path(@poll)
		end
	end

	private
	def choice_params
		params.require(:choice).permit(:uuid, :time)
	end
end
