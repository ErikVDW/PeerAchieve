class PagesController < ApplicationController
  respond_to :html
  
  def lose_weight
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
  
  def contact_thank_you
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message] || "Hello!"
    @fullmessage = Email.create(first_name: @first_name, last_name: @last_name, email: @email, message: @message)
    if @fullmessage.valid?
      # ActionMailer::Base.mail(
      #     :from => @email, 
    	 # 	:to => 'erikvdw@comcast.net', 
    	 # 	:subject => "A new contact form message from #{@first_name} #{@last_name}", 
    	 # 	:body => @message).deliver
    UserMailer.contact_form(@email, @first_name, @last_name, @message).deliver
    redirect_to '/thank_you'
    else
      redirect_to '/contact'
      flash[:alert] = @fullmessage.errors.full_messages.to_sentence
  	end
  end

  def thank_you
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message] || "Hello!"
    @fullmessage = Email.create(first_name: @first_name, last_name: @last_name, email: @email, message: @message)
    if @fullmessage.valid?
      # ActionMailer::Base.mail(
      #     :from => @email, 
    	 # 	:to => 'erikvdw@comcast.net', 
    	 # 	:subject => "A new contact form message from #{@first_name} #{@last_name}", 
    	 # 	:body => @message).deliver
    UserMailer.contact_form(@email, @first_name, @last_name, @message).deliver
    else
      redirect_to '/lose_weight'
      flash[:alert] = @fullmessage.errors.full_messages.to_sentence
  	end
  end

  def about
  end
end
