class Message < ApplicationRecord
  validates :email, presence: true, format: { with: /@/ }
  validates :name, presence: true
  validates :subject, presence: true
  validates :description, presence: true
  after_create :send_confirmation_email

  private
  def send_confirmation_email
    MessageMailer.confirmation(self.id).deliver_later
  end
end
