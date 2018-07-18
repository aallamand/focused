class MessagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:create]

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = "Merci pour votre votre message nous vous répondrons rapidement! 🙌"
      redirect_to pages_contact_path
    elsif @message.errors.any?
      flash[:already] = @message.errors.messages[:email][0]
      redirect_to pages_contact_path
    else
      flash[:error] = "#{@message.email} n'est pas un email valide 😱"
      redirect_to pages_contact_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :name, :description, :subject)
  end

end
