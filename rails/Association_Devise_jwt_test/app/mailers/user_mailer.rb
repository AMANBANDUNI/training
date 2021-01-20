class UserMailer < ApplicationMailer
  def user_confirmation(user)
    @greeting = "Hi"
    @user = user
    debugger
    mail to: @user.email, subject: "User sign up confirmation"
  end
end
