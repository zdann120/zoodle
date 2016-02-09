class Choice < ApplicationRecord
  has_many :selections
  has_many :subscribers, through: :selections
  belongs_to :poll

  def to_s
  	time
  end

  
end
