class Poll < ApplicationRecord
	has_many :subscribers
	has_many :choices
end
