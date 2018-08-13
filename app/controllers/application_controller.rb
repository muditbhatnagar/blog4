class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :role, :first_name, :last_name, :image, :activebit])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :role, :first_name, :last_name, :image, :activebit])
  end
end