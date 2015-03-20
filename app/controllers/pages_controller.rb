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

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message] || "Hello!"
    # Only try to send this email on a POST
    # if request.post?
    # or make a feedback form controller and send in the create action
    ActionMailer::Base.mail(:from => @email, 
  	  	:to => 'erikvdw@comcast.net', 
  	  	:subject => "A new contact form message from #{@name}", 
  	  	:body => @message).deliver
  	  	
  end

  def about
  end
end
