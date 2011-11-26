class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?,:current_user

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    if logged_in?
      User.find(session[:user_id])
    else
      nil
    end
  end

  def require_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to landing_path, :notice => "You must be logged in to see this page."
    end
  end
end
