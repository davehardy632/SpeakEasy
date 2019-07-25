class Api::V1::WebhooksController < Api::V1::ApiBaseController

  def index
    message = Message.new(message_params)
    message.save
    render status: 201, json: {}
  end

  private

  def message_params
    params.permit(:build_status, :build_state, :commit_messages, :creator)
  end
end
