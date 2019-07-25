class Api::V1::ShoutoutsController < Api::V1::ApiBaseController

  def index
    render json: ShoutoutSerializer.new(Shoutout.all)
  end

  def show
    render json: ShoutoutSerializer.new(Shoutout.find_all_by_parameter(slack_params))
  end

  def create
    Shoutout.create!(slack_params)
    Faraday.post(params[:response_url], "{'text': 'Plz Wait 5 minutes'}")

  end

  private

  def slack_params
    params.permit(:user_name, :text, :command )
  end
end
