class UserMailer < ActionMailer::Base
  default from: "from@example.com"
   def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  def feedback(message)
  @message = message
  mail(to: 'ushaambig@railsfactory.org', subject: 'feedback')
  end
 end
