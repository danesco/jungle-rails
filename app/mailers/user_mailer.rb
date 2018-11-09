class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def order_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
