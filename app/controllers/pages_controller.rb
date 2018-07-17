class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
    @icons = Icon.all
  end

  def contact
    @message = Message.new
  end
end
