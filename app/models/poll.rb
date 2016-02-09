class Poll < ApplicationRecord
	include FriendlyId
	has_many :subscribers
	has_many :choices
	belongs_to :user
	friendly_id :uuid
end
