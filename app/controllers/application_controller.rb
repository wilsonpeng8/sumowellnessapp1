class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |params|
    params.permit(
      :email, :password, :password_confirmation, :first_name,
      :last_name, :birthday, :gender, :location, :notes
    )}
  	

  	
  	  devise_parameter_sanitizer.permit(:account_update) { |params|
    params.permit(
      :email, :password, :password_confirmation, :first_name,
      :last_name, :birthday, :gender, :location, :notes
    )}
  	
end
end

