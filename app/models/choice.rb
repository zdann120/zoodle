class Choice < ApplicationRecord
  has_many :selections
  has_many :subscribers, through: :selections
  belongs_to :poll
end
