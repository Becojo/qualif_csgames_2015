class Participant < ActiveRecord::Base
	attr_accessor :score


	has_many :preferences
	has_many :assignments

	has_many :prefered_competitions, through: :preferences, class_name: 'Competition'
	has_many :assigned_competitions, through: :assignments, class_name: 'Competition'
end
