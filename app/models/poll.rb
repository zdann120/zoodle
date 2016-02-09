class Poll < ApplicationRecord
	include FriendlyId
	has_many :subscribers, dependent: :destroy
	has_many :choices, dependent: :destroy
	belongs_to :user
	friendly_id :uuid
end
