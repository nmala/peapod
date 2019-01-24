class ApplicationController < ActionController::Base
before_action :authorize

def authorize # hide_pages, authorize, is_logged_in
   if !User.find_by(id: session[:user_id])
     redirect_to login_path
   end
 end
  def current_user
     # @_current_user ||= session[:current_user_id] &&
       User.find_by(id: session[:user_id])
   end
end
