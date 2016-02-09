class Choice < ApplicationRecord
  has_many :selections
  has_many :subscribers, through: :selections
  belongs_to :poll

  def to_s
  	formatted_time
  end

  def formatted_time
  	self.time.strftime("%e %b %Y %I:%M %p")
  end

  
end
