class SubscribersController < ApplicationController
	def create
		@poll = Poll.friendly.find(params[:poll_id])
		@poll ||= Poll.find(params[:poll_id])
		@subscriber = @poll.subscribers.new(subscriber_params)
		@subscriber.uuid = SecureRandom.uuid
		if @subscriber.save
			redirect_to poll_url(@poll)
		else
		end
	end

	private
	def subscriber_params
		params.require(:subscriber).permit(:uuid, :email, choice_ids: [])
	end
end
