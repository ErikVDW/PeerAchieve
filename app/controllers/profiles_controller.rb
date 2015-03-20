class ProfilesController < ApplicationController
	def show
		@user = User.find(params[:id])
		
		# TODO - figure out how to deal with current user
		@goal = Goal.new
		@goalcomment = GoalComment.new
	end
	
	def update
		@user.update_attributes(user_params)
	end	

	private
	def user_params
		require(:user)
	end
end

