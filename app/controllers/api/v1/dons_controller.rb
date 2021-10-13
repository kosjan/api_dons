class Api::V1::DonsController < ApplicationController

  # GET /dons
  def index
    @dons = Don.all
    render json: @dons
  end

  # POST /Dons
  def create
    @don = Don.new
    @don.name = params["command"]["client_name"]
    @don.tel_num = params["command"]["smsEmail54FZ"]
    @don.summ = params["command"]["goods"][0]["sum"]
    if @don.save
      render json: { id: @don.id }
    else
      render_error({ detail: 'bad request' }, 400)
    end
  end

  private

  def don_params
    params.permit(:name, :tel_num, :summ)
  end

end
