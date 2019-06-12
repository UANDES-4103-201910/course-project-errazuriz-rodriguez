class UserprofilesController < ApplicationController

    def userprofile
        a1 = 1 #current user con las sesion creada se cambia esre valor
        @usr = current_user
    end
end
