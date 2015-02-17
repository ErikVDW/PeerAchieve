class Goal < ActiveRecord::Base
    
    belongs_to :user
    has_many :goal_comments
    
    has_many :likes, as: likeable
end
