class Api::V1::MessagesController < ApplicationController

  def index
    render json: MessageSerializer.new(Message.all)
  end

end
