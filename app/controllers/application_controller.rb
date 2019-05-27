class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :nick, :image, :country, :city, :phone])
        devise_parameter_sanitizer.permit(:update, keys: [:name, :lastname, :nick, :image, :country, :city, :phone]) 
    end
end
