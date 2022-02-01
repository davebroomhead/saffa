class DamsController < ApplicationController

  before_action :check_if_logged_in

  def new
    @dam = Dam.new
  end

  def create
    Dam.create dam_params
    redirect_to dams_path #back to index
  end

  def index
    @dams = Dam.all
  end

  def show
    @dam = Dam.find params[:id]
  end

  def edit
    @dam = Dam.find params[:id]
  end

  def update
    dam = Dam.find params[:id]
    dam.update dam_params
    redirect_to dam_path(params[:id])
  end

  def destroy
    Dam.destroy params[:id]
    redirect_to dams_path
  end

  private
  def dam_params
    params.require(:dam).permit(:name, :location, :description, :health, :status, :owner, :photo)
  end
  
end
