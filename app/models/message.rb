class Message < ApplicationRecord
  validates :email, presence: true, format: { with: /@/ }
  validates :name, presence: true
  validates :subject, presence: true
  validates :description, presence: true
  after_create :send_confirmation_email
  after_create :send_request_email


  private
  def send_confirmation_email
    MessageMailer.confirmation(self.id).deliver_later
  end
  def send_request_email
    MessageMailer.request(self.id).deliver_later
  end
end
