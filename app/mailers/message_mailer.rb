class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.welcome.subject
  #
  def welcome(id)
    @message = Message.find(id)

    mail(
      to: @message.email,
      subject: "Vous êtes abonné à Legumes.green 👍",
      track_opens: 'true')
  end
end
