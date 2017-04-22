class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :username, :dob, :phone_no, :address, :department, :position, :avatar])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
		devise_parameter_sanitizer.permit(:account_update,keys: [:first_name, :last_name, :username, :email,  :dob, :phone_no, :address, :department, :position, :password, :avatar])
	
		devise_parameter_sanitizer.permit(:accept_invitation)
		devise_parameter_sanitizer.permit(:accept_invitation) do |u|
		u.permit(:email, :password, :password_confirmation, :invitation_token, :type, :first_name, :last_name, :username, :email,  :dob, :phone_no, :address, :department, :position, :password, :avatar )
		end

	end
end



