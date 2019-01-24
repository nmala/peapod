class UsersController < ApplicationController
  def create
    byebug
   @user = User.create(user_params)
   redirect_to user_path(@user)
 end

 def show
   @user = User.find(params[:id])
 end

 private

 def user_params
   params.require(:user).permit(:username, :password, :password_confirmation)
 end
end
