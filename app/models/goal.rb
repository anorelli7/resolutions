class Goal < ActiveRecord::Base
	belongs_to :user
	has_many :GoalTypes
	accepts_nested_attributes_for :GoalTypes
	validates :complete, presence: true
  	validates :description, presence: true

  	def update_current
  		self.increase! :current
  	end
end
