class PagesController < ApplicationController
  respond_to :html
  
  def loseweight
  end
  
  def errortest
  end
  
  def confirmation
  end
  
  def getintouch
  end
  
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
    # email = Email.create(name: @name, email: @email, message: @message)
    # if email.valid?
      ActionMailer::Base.mail(
          :from => @email, 
    	  	:to => 'erikvdw@comcast.net', 
    	  	:subject => "A new contact form message from #{@name}", 
    	  	:body => @message).deliver
    # UserMailer.contact_form(@email, @name, @message).deliver
  # 	else
  # 	  redirect_to '/loseweight'
  # 	  alert: ''
  # 	end
  end

  def about
  end
end
