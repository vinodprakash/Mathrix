class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def message_email(contact)
    @contact = contact
    mail(to: 'psvinodprakash@gmail.com', subject: 'Message')
  end

  def welcome_email(register)
    @register = register
    mail(to: @user.email, subject: 'Welcome to MathRix 15')
  end

  def admin_email(register)
    @register = register
    mail(to: 'psvinodprakash@gmail.com', subject: 'User Registered')
  end
end
