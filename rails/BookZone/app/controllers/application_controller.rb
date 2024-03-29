class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name,:email,:phone_number,:dob,:password,:password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name,:email,:phone_number,:password,:password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:user_name,:email,:password])
  end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  # helper_method :current_user
  
end
