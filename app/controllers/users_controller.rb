class UsersController < ApplicationController

  # def index
  # end

  include SMSFu

  def show
    @user = User.find_by_id(params[:id])
  end

  def self.send_reminder
    deliver_sms("9095180471","verizon","Gifter here! It is time to choose a gift for one or more of your recipients. Log on to see your recommendations :)")
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
