class Like < ActiveRecord::Base
    
   belongs_to :likeable, polymorphic: true #How to get dependent: :destroy here? 
end