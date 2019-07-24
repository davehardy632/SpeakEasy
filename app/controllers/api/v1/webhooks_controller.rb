class Api::V1::WebhooksController < ApplicationController
  def index
    message = Message.new(message_params)
    message.save

  end

  private

  def message_params
    params.permit(:build_status, :build_state, :commit_messages, :creator)
  end
end
