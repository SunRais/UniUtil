class ApplicationController < ActionController::Base
	
	before_action :configure_permitted_parameters, if:  :devise_controller?

	protected

		def configure_permitted_parameters
    		devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :name, :surname, :sex, :badge_number, :address, :city, :telephone_number, :province, :remember_me, :course_id, :avatar])
  		end
end
