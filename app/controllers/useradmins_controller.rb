class UseradminsController < ApplicationController

    def useradmin
        @users = User.all
    end
    
    def deleteuser
        @us = params[:user]
        @us1 = User.find_by(id: @us)
        @us1.update(deleted: true)
        redirect_back fallback_location: "/useradmins"
    end
end
