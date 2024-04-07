class LoginController < ApplicationController
  def login
    @user = User.new
  end

  def sign_in
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = "Login failed"
      redirect_to login_path
    end
  end
end
