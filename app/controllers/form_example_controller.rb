class FormExampleController < ApplicationController
	def form_input
	end

	def form_output
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		ActionMailer::Base.mail(:from => @email, 
  	:to => 'to@domain.com', 
  	:subject => "A new contact form message", 
  	:body => @message).deliver
		
		render 'form_result'
	end
end