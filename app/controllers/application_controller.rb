class ApplicationController < ActionController::Base
  before_action :set_locale
  include SessionsHelper
   
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options
    { locale: I18n.locale }
  end
  
  def require_login
    unless logged_in?
      flash[:alert] = t('login_required')
      redirect_to login_path
    end
  end
end
