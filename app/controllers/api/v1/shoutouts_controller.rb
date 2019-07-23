class Api::V1::ShoutoutsController < ApplicationController

  def index
    render json: ShoutoutSerializer.new(Shoutout.all)
  end

end
