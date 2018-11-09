class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

    def order_email(order)
    # @user = params[:user]
    @order = order
    mail(to: 'skhdjfjlksdjfds', subject: 'Welcome to My Awesome Site')
  end
end
