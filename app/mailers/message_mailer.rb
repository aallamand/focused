class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.welcome.subject
  #
  def confirmation(id)
    @message = Message.find(id)

    mail(
      to: @message.email,
      subject: "Nous avons bien reçu votre message 👍",
      track_opens: 'true')
  end

  def request(id)
    @message = Message.find(id)
    mail(
      to: "contact@focused.fr",
      subject: "New request #{@message.subject} | id: #{@message.id}",
      track_opens: 'true')
  end
end
