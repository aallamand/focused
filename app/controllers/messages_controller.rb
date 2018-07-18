class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = "Merci pour votre votre message nous vous répondrons rapidement! 🙌"
      redirect_to pages_contact_path
    elsif @message.errors.messages.first[1][0] == "is invalid"
      flash[:error] = "#{@message.email} n'est pas un email valide 😱"
      render pages_contact_path
    elsif @message.errors.any?
      render pages_contact_path
    else
      redirect_to pages_contact_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :name, :description, :subject)
  end

end
