class WebhooksController < ApplicationController
  def index
    # require 'pry'; binding.pry
    message = Message.new(message_params)
    message.save

  end

  def message_params
    require(:message).permit(:build_status, :build_state, :commit_messages, :creator)
  end

end
