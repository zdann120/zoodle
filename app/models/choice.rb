class Choice < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :subscribers, through: :selections
  belongs_to :poll

  def to_s
  	formatted_time
  end

  def formatted_time
  	self.time.strftime("%Y %b %e @ %I:%M %p")
  end



  
end
