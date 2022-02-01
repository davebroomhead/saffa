class UsersController < ApplicationController

  before_action :check_if_logged_in

  def new
    @user = User.new
  end

  def create
    User.create user_params
    redirect_to users_path
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path(params[:id])
  end

  def destroy
    User.destroy params[:id]
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :membership, :phone, :car_reg, :password)
  end


end
