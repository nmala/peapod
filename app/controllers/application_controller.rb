class ApplicationController < ActionController::Base

  def current_user
     # @_current_user ||= session[:current_user_id] &&
       User.find_by(id: session[:user_id])
   end
end
