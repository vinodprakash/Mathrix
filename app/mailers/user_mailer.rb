class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def message_email(contact)
    @contact = contact
    mail(to: 'psvinodprakash@gmail.com', subject: 'Message')
  end
end
