class Blog < ActiveRecord::Base
	validates :creator, presence: true
	validates :creator, length: {minimum:5}
	validates :title, presence: true
	validates :title, length: {maximum:200}
	validates :body, length: {minimum:50}
end
