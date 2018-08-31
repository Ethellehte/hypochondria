class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  protect_from_forgery with: :exception

    protected

    def configure_permitted_parameters
      attributes = [:first_name, :email, :date_of_birth, :blood_type, :rhesus_factor, :brief_information, :allergy]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)
    end

end
