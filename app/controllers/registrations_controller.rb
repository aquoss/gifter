class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(resource)
    flash[:notice] = "Account successfully updated"
    user_path(resource)
  end

end
