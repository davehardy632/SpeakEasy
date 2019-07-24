class Api::V1::ShoutoutsController < ApplicationController

  def index
    render json: ShoutoutSerializer.new(Shoutout.all)
  end
  
  def create
    Shoutout.create!(slack_params)
    Faraday.post(params[:response_url], "{'text': 'Plz Wait like 5 minutes'}")
  end

  private 

  def slack_params
    params.permit(:user_name, :text, :command )
  end
end
