class DamsController < ApplicationController

  before_action :check_if_logged_in

  def new
    @dam = Dam.new
  end

  def create
    @dam = Dam.new dam_params
    
    if params[:dam][:photo].present?
      # forward image to Cloudinary using gem
      response = Cloudinary::Uploader.upload params[:dam][:photo]
      # p response
      raise 'hell'
      @dam.photo = response['public_id']
    end # upload check
    
    @dam.save
    
    redirect_to dams_path # back to index
  end # create

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
    dam = Dam.find(params[:id])

    if params[:file].present?
      # forward image to Cloudinary using gem
      req = Cloudinary::Uploader.upload(params[:file])
      p req
      dam.photo = req["public_id"]
    end # upload check
    
    dam.update_attributes(dam_params)
    dam.save
    redirect_to dam_path(dam)
  end

  def destroy
    Dam.destroy params[:id]
    redirect_to dams_path
  end

  private
  def dam_params
    params.require(:dam).permit(:name, :location, :description, :health, :status, :owner)
  end
  
end
