class UserprofilesController < ApplicationController

    def userprofile
        a1 = 1 #current user con las sesion creada se cambia esre valor
        @usr = User.where(id: a1).first
    end
end
