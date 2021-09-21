class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

 def after_sing_in_path_for(resource)
  user_path
 end

  def after_sing_up_path_for(resource)
  user_path
  end

 def after_sing_out_path_for(resource_of_scope)
  new_user_session_path
 end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end


end
