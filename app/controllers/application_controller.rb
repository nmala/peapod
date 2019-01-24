class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
      @user = (User.find_by(id: session[:user_id]) || User.new)
      # session[:current_user_name] = @user.username
   end

   def logged_in?
     current_user.id != nil
   end

   def require_logged_in
     return redirect_to login_path unless logged_in?

   end
end
