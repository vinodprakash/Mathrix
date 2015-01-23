class UserMailer < ActionMailer::Base
  default from: "MathRix"

  def message_email(contact)
    @contact = contact
    mail(to: 'psvinodprakash@gmail.com', subject: 'Message')
  end

  def register_email(register)
    @register = register
    mail(to: 'psvinodprakash@gmail.com', subject: 'User Registered')
  end

  def admin_email(register)
    @register = register
    mail(to: 'psvinodprakash@gmail.com', subject: 'Message')
  end
end
