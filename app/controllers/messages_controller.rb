class MessagesController < ApplicationController
  layout false

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    render nothing: true if verify_recaptcha(model: @message,
                                             message: "Oh! It's error with reCAPTCHA!") && @message.save
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
