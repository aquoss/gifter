class UsersController < ApplicationController

  # def index
  # end

  def show
    @user = User.find_by_id(params[:id])
  end

  # def edit
  #   @user = User.find(params[:id])
  # end
  #
  # def new
  #   @user = User.find_by_id(params[:id])
  # end
  #
  # def create
  #   user = User.find_by_id(params[:id])
  # end

end
