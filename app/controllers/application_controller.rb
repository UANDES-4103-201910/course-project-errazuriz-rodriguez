class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :nick, :image, :country, :city, :phone])
        devise_parameter_sanitizer.permit(:update, keys: [:name, :lastname, :nick, :image, :country, :city, :phone]) 
    end
#
    
    def check
        if !user_signed_in?
            flash[:failure] = "User not signed in"
            redirect_to root_path
        end
    end 

    def is_admin
        if !current_user.admin and !current_user.superadmin
            flash[:failure] = "User without permission"
            redirect_to User.find(current_user.id)
        end
    end

    def is_super_admin
        if !current_user.superadmin
            flash[:failure] = "User without permission"
            redirect_to User.find(current_user.id)
        end
    end
end
