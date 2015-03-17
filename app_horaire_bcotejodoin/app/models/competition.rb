class Competition < ActiveRecord::Base
	attr_accessor :is_satisfied # bleh

	has_many :preferences
	has_many :assignments

	has_many :assigned_participants, through: :assignments


	def self.is_valid
		
	end
end
