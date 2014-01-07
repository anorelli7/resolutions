class Goal < ActiveRecord::Base
	belongs_to :user
	has_many :GoalTypes
	accepts_nested_attributes_for :GoalTypes
	
	validates :complete, presence: true
  	validates :description, presence: true

  	attr_accessor :update_current

  		
  def update_current
  	self.progress = :update_current
  end

  def progress=(val)
  	self.current = self.current + val
  end
private
  
end
