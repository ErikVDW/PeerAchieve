class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :goals, dependent: :destroy
  has_many :goal_comments, dependent: :destroy
  # has_one :streak, dependent: :destroy  # use a streak model if you want to maintain a history of streak over times
  
  
  # This method calculates data on the fly (meaning it's not stored in the database)
  def streak
    result = 0
    goals.order(created_at: :desc).each do |goal|
      # TODO ignore new goals in the streak 
      if goal.achieved_status?
        result += 1 
      elsif result == 0
        # ignore 'new' goals in the streak.
      else
        break    
      end
    end
    result
  end
  
end