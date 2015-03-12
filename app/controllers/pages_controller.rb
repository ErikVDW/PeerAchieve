class PagesController < ApplicationController
  respond_to :html
  
  def purchase
  end
  
  def index
  	
  	if user_signed_in?
  	  redirect_to profile_path(current_user)
  	end
  	@blog = Blog.all
  end

  def contact
  end

  def about
  end
end
