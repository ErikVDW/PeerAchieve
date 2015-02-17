class GoalComment < ActiveRecord::Base
    belongs_to :Goal
    
    has_many :likes, as: likeable
end
