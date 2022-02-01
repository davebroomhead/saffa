class BookingsController < ApplicationController

  before_action :check_if_logged_in

  def new
    @users = User.all
    @dams = Dam.all
    @booking = Booking.new
    @user_select = User.all.pluck(:name, :id)

    if @booking.persisted?
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end # new

  def create
    @dams = Dam.all
    @booking = Booking.create booking_params
    @booking.save

    if @booking.persisted?
      redirect_to booking_path(@booking)
    else
      render :new
    end # if booking.persisted
  end # create

  def index
    @bookings = Booking.all
  end # index

  def show
    @booking = Booking.find params[:id]
  end # show

  def edit
    @users = User.all
    @dams = Dam.all
    @booking = Booking.find params[:id]
    @user_select = User.all.pluck(:name, :id)
    redirect_to bookings_path unless @current_user.admin == true || @booking.user_id == @current_user.id
  end # edit

  def update
    @booking = Booking.find params[:id]
    
    if @current_user.admin == false && @booking.user_id != @current_user.id
      redirect_to bookings_path
      return
    end # booking user_id

    if @booking.update booking_params
      redirect_to booking_path(@booking)
    else
      render :edit
    end # if-else booking updated

  end # update

  def destroy
    Booking.destroy params[:id]
    redirect_to bookings_path
  end # destroy

  private
  def booking_params
    params.require(:booking).permit(:date_time, :car_reg, :dam_id, :user_id)
  end # booking_params

end # class Bookings
