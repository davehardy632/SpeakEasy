class WebhooksController < ApplicationController
  def index
    message = Message.new(message_params)
    message.save

  end

  private

  def message_params
    require 'pry'; binding.pry
    params.require(:message).permit(:build_status, :build_state, :commit_log, :creator)
  end
end
