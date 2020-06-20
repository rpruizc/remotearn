class SubscriptionMailer < ApplicationMailer
  # Default Mail Values
  default from: 'subscription@remotearn.xyz', to: 'rpruiz@gmail.com'

  def welcome_email(user)
    @user = user
    # Overriding the 'to' default
    mail(to: @user.email, subject: 'Test from rails')
  end

  def test_email
    mail(to: 'rpruiz@gmail.com', subject: 'Test from rails')
  end
end
