class Subscriber < ApplicationRecord
  belongs_to :poll
  has_many :selections
  has_many :choices, through: :selections
end
