class Goal < ActiveRecord::Base
	belongs_to :user
	has_many :GoalTypes
	has_many :comments
	accepts_nested_attributes_for :GoalTypes
	
	validates :complete, presence: true
  	validates :description, presence: true

  	acts_as_commentable


private
  
end
