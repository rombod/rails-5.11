class UserMailer < ApplicationMailer

default from: "from@example.com"  
layout 'mailer'
def contact_form(email, name, message)   
@message = message     
mail(:from => email, :to => 'mahmood.madgidi@farauto.ca', :subject => "A new contact form message from #{name}")   
end 

#def welcome(user)
  	#@user = user
  	#@appname = "rails-5.11"
  	#mail(to: user.email, subject: "Welcome to #{@appname}!")
	#end

def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end

  





  #trying to do thing through the controller instead
  def new_registrations(user)
   @user = user
    mail(:to => @user.email, 
        :subject => "New User created please review and enable.")
  end