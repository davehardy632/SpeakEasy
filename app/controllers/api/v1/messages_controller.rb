class Api::V1::MessagesController < ApplicationController

  def index
    render json: MessageSerializer.new(Message.all)
  end

  def show
    render json: MessageSerializer.new(Message.find_by(creator: params["creator"]))
  end
  
  def recent
    render json: MessageSerializer.new(Message.recent_by_hours(message_params[:hours]))
  end

  private

  def message_params
    params.permit(:hours)
  end
end
