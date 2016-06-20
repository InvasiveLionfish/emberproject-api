class NewUserEmail < ApplicationMailer
  def notify_user(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Fair/Fare")
  end
end
