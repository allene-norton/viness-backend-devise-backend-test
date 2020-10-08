class UsersWinesController < ApplicationController
  def index
    @users_wines = UsersWine.all
    render json: @users_wines
  end

  def show
    @users_wine = UsersWine.find_by(id: params[:id])
    render json: @users_wine
  end
end
