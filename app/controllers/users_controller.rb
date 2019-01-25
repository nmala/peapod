class UsersController < ApplicationController
  before_action :require_logged_in, only: [:show]


  def create
   @user = User.create(user_params)
   redirect_to login_path
 end

 def show

   @user = User.find(params[:id])
   if @user == current_user
     render :show
   else
     redirect_to podcasts_path
   end
 end

 def new
   @user = User.new
 end

 private

 def user_params
   params.require(:user).permit(:username, :password, :password_confirmation)
 end
end
