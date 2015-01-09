class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :name, length: { minimum: 20, maximum: 200 }
end
