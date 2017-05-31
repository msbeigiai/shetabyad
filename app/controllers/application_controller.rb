class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	before_action :store_current_location, :unless => :devise_controller?
	
	#layout :layout_by_resource
	
	private
	
	def layout_by_resource
		if devise_controller? && resource_name == :admin
			"signup"
		else
			"application"
		end
	end
	
	def store_current_location
    store_location_for(:user, request.url)
  end
	
	protected
	
	def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
