class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user and user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to booked_lecture_rooms_url, notice: "Zostałeś zalogowany"
    else
      redirect_to login_url, alert: "E-mail lub hasło są nieprawidłowe!"
    end
  end

  
  
  def destroy
	session[:user_id] = nil
    redirect_to login_url
  end
end
