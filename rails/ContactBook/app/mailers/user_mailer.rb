class UserMailer < ApplicationMailer
  def user_confirmation(user)
    @greeting = "Hi"
    @user = user

    mail to: @user.email, subject: "User sign up confirmation"
    # mail to: "to@example.org", subject: "Product created confirmation"
  end
end
