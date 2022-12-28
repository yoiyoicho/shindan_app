class ApplicationController < ActionController::Base
  private

  def login(user)
    session[:user_id] = user.id
  end

  def logout(user)
    session[:user_id] = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    redirect_to new_user_session_path unless current_user
  end
end
