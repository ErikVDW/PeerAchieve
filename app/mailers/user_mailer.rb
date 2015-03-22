class UserMailer < ApplicationMailer
    default from: 'YesItWorked@Yay.com'
    
    def contact_form(email, name, message)
        @message = message
        mail(
            from:       email,
            to:         "erikvdw@comcast.net",
            subject:    'A new contact form message from #{name}')
    end
end
