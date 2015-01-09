class WelcomeController < ApplicationController
	def index
		@featured_product = Product.find(3)
	end
end
