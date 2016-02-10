class ChoicesController < ApplicationController
	def create
		@poll = Poll.friendly.find(params[:poll_id])
		@poll ||= Poll.find(params[:poll_id])
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

	def destroy
		@poll = Poll.friendly.find(params[:poll_id])
		@choice = Choice.find(params[:id])
		@choice.destroy
		params[:notice] = "Choice destroyed successfully."
		redirect_to poll_url(@poll)
	end

	def mark_final
		@choice = Choice.find(params[:choice_id])
		@poll = @choice.poll
		@choice.final = true
		@choice.save
		@poll.finalized = true
		@poll.save
		flash[:notice] = "Slot marked as final."
		redirect_to poll_url(@poll)
	end

	private
	def choice_params
		params.require(:choice).permit(:uuid, :time, :closed, :description)
	end
end
