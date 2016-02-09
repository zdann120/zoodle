class Subscriber < ApplicationRecord
  belongs_to :poll
  has_many :selections, dependent: :destroy
  has_many :choices, through: :selections

  def poll_slots
  	self.poll.choices
  end

  def destroy
  	@poll = Poll.friendly.find(params[:poll_id])
  	@subscriber = Subscriber.find(params[:id])
  	@subscriber.destroy
  	params[:notice] = "Respondent destroyed successfully."
  	redirect_to poll_url(@poll)
  end
end
