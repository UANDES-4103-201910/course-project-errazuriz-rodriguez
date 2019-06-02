class ChangepasswordsController < ApplicationController

  def changepassword
    @user1 = User.find_by(id: params[:user])
  end
end
