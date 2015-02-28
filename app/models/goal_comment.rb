class GoalComment < ActiveRecord::Base
    belongs_to :goal
    belongs_to :user
    
    has_many :likes, as: :likeable
end
