class Message < ActiveRecord::Base
  ### VALIDATIONS ###
  validates :name, presence: true
  validates :email, presence: true
  validates :body, presence: true

  ### CALLBACKS ###
  after_create :send_message

  def send_message
    MessageMailer.send_message(self).deliver_later
  end
end
