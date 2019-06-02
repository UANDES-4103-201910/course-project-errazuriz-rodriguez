class UseradminsController < ApplicationController
    before_action :check
    def useradmin
        @users = User.all
    end
    
    def deleteuser
        @us = params[:user]
        @us1 = User.find_by(id: @us)
        @us1.update(deleted: true)
        redirect_back fallback_location: "/useradmins"
    end

    def banuser
        @us = params[:user]
        @us1 = User.find_by(id: @us)
        @us1.update(banned: true)
        redirect_back fallback_location: "/useradmins"
    end

    def blacklistuser
        @us = params[:user]
        @us1 = User.find_by(id: @us)
        redirect_to (:controller => "User", :action => "update", :id => @us, :blacklist => true)
        @us1.update(blacklist: true)
        redirect_back fallback_location: "/useradmins"
    end
    
    def check
        if !current_user.admin and !current_user.superadmin
            flash[:failure] = "User without permission"
            redirect_to User.find(current_user.id)
        end
    end
end
