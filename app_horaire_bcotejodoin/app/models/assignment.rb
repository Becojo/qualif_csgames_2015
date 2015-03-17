class Assignment < ActiveRecord::Base
	belongs_to :participant
	belongs_to :competition
end
