class UsersController < ApplicationController
  # before_action :authenticate_user!, except: [:show]
	#load_and_authorize_resource

	def show
		@user = User.find(params[:id])
		# TODO - figure out how to deal with current user
		@goal = Goal.new
	end
	
	def edit
	end
	def update
		@user.update_attributes(user_params)
	end	

	private
	def user_params
		require(:user)
	end
end

