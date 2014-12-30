class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def message_email(contact)
    @contact = contact
    mail(to: 'psvinodprakash@gmail.com', subject: 'Message')
  end

  def register_email(register)
    @contact = contact
    mail(to: 'psvinodprakash@gmail.com', subject: 'User Registered')
  end

  def admin_email(register)
    @contact = contact
    mail(to: 'psvinodprakash@gmail.com', subject: 'Message')
  end
end
