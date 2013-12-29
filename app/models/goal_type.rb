class GoalType < ActiveRecord::Base
	belongs_to :goal

	GOAL_TYPE_OPTIONS = [
		"miles",
		"books",
		"times"
	]
	
	validates_inclusion_of :field, :in => GOAL_TYPE_OPTIONS
end
