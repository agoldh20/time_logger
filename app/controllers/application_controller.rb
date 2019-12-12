class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_admin!
    redirect_to "/login" unless current_user && current_user.admin
  end
end
