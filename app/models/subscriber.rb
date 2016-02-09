class Subscriber < ApplicationRecord
  belongs_to :poll
  has_many :selections
  has_many :choices, through: :selections

  def poll_slots
  	self.poll.choices
  end
end
