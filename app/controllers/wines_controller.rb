class WinesController < ApplicationController
  def index
    @wines = Wine.all
    render json: @wines
  end

  def show
    @wine = Wine.find_by(id: params[:id])
    render json: @wine
  end
end
