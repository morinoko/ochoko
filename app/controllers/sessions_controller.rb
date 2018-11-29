class SessionsController < ApplicationController
  def new
  end
  
  def create
    if auth_hash = request.env["omniauth.auth"]
      user = User.find_or_create_by_omniauth(auth_hash)
      log_in(user)
      
      redirect_to user_path(user)
    else
      user = User.find_by(email: params[:session][:email])
      
      if user && user.authenticate(params[:session][:password])
        log_in(user)
        
        redirect_to user_path(user)
      else
        render :new
      end
    end
  end
  
  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end