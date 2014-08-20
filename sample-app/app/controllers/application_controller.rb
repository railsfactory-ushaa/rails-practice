class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up){|u|u.permit(:user_name, :gender, :email, :password, :password_confirmation )}
  devise_parameter_sanitizer.for(:account_update) << :name
end
end