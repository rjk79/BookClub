class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user

  def current_user
    # checks cookie to find the user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def ensure_logged_in
    # bounces to login page 
    redirect_to new_session_url unless logged_in?
  end

  def login(user)
    # set cookie
    @current_user = user
    session[:session_token] = user.session_token
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end

  def logged_in?
    # 1st bang converts to Bool, 2nd one negates it
    !!current_user
  end

end
