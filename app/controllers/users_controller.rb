class UsersController < ApplicationController

  def show
    @user = User.find_by_id(params[:id])
  end

  # def self.send_reminder
  #   deliver_sms(current_user.phone_number,current_user.phone_carrier,"Gifter here! It is time to choose a gift for one or more of your recipients. Log on to see your recommendations :)")
  # end

end
