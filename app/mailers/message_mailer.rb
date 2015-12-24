class MessageMailer < ApplicationMailer
  def send_message(message)
    @name = message.name
    @email = message.email
    @body = message.body
    mail(subject: "#{@name} wilt contact met je opnemen.")
  end
end
