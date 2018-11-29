module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  
  def logged_in?
    !!current_user
  end
    
  def require_login
    flash[:alert] = t('login_required')
    redirect_to login_path unless logged_in?
  end
end