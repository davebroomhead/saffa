class SessionController < ApplicationController
  def new
  end

  def create

    user = User.find_by email: params[:email]

    if user.present? && user.authenticate(params[:password])

      # successful login
      session[:user_id] = user.id
      redirect_to root_path

    else

      # unsuccessful login - email not registered or password incorrect
      flash[:error] = 'Invalid email or password'
      redirect_to login_path

    end # credentials check

  end # create

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end # destroy
end # class 
