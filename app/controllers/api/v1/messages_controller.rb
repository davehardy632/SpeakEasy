class Api::V1::MessagesController < ApplicationController

  def index
    render json: MessageSerializer.new(Message.all)
  end

  def show
    render json: MessageSerializer.new(Message.find_by(creator: params["creator"]))
  end

end
