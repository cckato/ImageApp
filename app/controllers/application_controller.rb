class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  # ログインしていなかったらログインページにリダイレクト
  def check_login
    if session[:login_id].blank? then
      redirect_to controller: 'login', action: 'index'
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:login_id])
  end
end
