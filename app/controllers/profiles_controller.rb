class ProfilesController < ApplicationController
	def show
		
		@user = User.find(params[:id])
		# What if I also had something like:
		# @foo = Foo.find(params[:id])
		# @foo = Foo.find(params[:foo_id])
		
		# nested resource
		# /goals/3/comments  # 3 = params[:goal_id]  
		# /goals/3/comments/5  # params[:comment_id]  =5, params[:id]  = 3 <- NOT this
		# /goals/3/comments/5  # params[:goal_id]  =3, params[:id]  = 5 <- Comments controller for this
		
		# The router takes an id, but which would it take,
		# The route from the @user object, or the route from the @foo object?
		# Or would it expect to take both with a nested route?
		# Note to self: 
		
		# TODO - figure out how to deal with current user
		@goal = Goal.new #Does Goal reference the Goal controller or the Goal model, or is this something of its own? -> Model
	end
	
	def update
		@user.update_attributes(user_params)
	end	

	private
	def user_params
		require(:user)
	end
end

