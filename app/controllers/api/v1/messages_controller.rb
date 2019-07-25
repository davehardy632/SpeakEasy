class Api::V1::MessagesController < Api::V1::ApiBaseController

  def index
    render json: MessageSerializer.new(Message.all)
  end

  def show
    render json: MessageSerializer.new(Message.find_all_by_parameter(params))
  end

  def recent
    render json: MessageSerializer.new(Message.previous_messages(previous_params[:previous]))
  end

  private

  def previous_params
    params.permit(:previous, :build_status, :build_state, :creator )
  end
end
