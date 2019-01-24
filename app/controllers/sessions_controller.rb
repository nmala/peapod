class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:login, :create]

  def login
    render :login
  end



  def create

   @user = User.find_by(username: params[:username])
   return head(:forbidden) unless @user.authenticate(params[:password])
   session[:user_id] = @user.id
   redirect_to user_path(@user)
 end

 def destroy
    session.delete(:user_id)
  end
end
