class Message < ApplicationRecord
  validates :email, presence: true, format: { with: /@/ }
  validates :name, presence: true
  validates :subject, presence: true
  validates :description, presence: true
  after_create :send_welcome_email

  private
  def send_welcome_email
    MessageMailer.welcome(self.id).deliver_later
  end
end
