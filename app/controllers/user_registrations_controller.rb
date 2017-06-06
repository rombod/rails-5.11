class UserRegistrationsController < ApplicationController
	def create
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
  end

  def new
  end
  
end
