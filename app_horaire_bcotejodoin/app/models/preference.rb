class Preference < ActiveRecord::Base
	belongs_to :participant
	belongs_to :competition
end
