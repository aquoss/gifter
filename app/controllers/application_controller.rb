class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  include UsersHelper

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(user)
    user_path(user)
  end

  # The path used after sign in
  def after_sign_in_path_for(user)
    user_path(user)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
      [:first_name, :last_name, :phone_number, :phone_carrier, :email_reminder, :sms_reminder,  :address_line_1, :address_line_2, :zip_code, :city, :state, :country])
    devise_parameter_sanitizer.permit(:account_update, keys:
      [:phone_number, :phone_carrier, :email_reminder, :sms_reminder,  :address_line_1, :address_line_2, :zip_code, :city, :state, :country])
  end
end

# before_action :authenticate_user! add into any controller that you want to be blocked to logged in users only
