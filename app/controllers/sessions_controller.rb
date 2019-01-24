class SessionsController < ApplicationController
  # skip_before_action :authorize, only: [:login, :create]

  def login
    render :new
  end



  def create
   @user = User.find_by(username: params[:username])

   if !!@user && @user.authenticate(params[:password])
     session[:user_id] = @user.id
     redirect_to user_path(@user)
   else
     flash[:failed_login] = "Login Failed"
     redirect_to login_path

   end
 end

 def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
