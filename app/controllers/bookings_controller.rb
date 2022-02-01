class BookingsController < ApplicationController

  before_action :check_if_logged_in

  def new
    @dams = Dam.all
    @booking = Booking.new
  end # new

  def create
    @dams = Dam.all
    @booking = Booking.create booking_params
    @booking.user_id = @current_user.id
    @booking.save

    if @booking.persisted?
      redirect_to bookings_path
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
    @booking = Booking.find params[:id]
    redirect_to login_path unless @mixtape.user_id == current_user.id
  end # edit

  def update
    @booking = Booking.find params[:id]
    
    if @booking.user_id != @current_user.id
      redirect_to login_path
      return
    end # booking user_id

    @booking.update booking_params

    if @booking.updated?
      redirect_to booking_path(@booking)
    else
      render :edit
    end # if booking updated

  end # update

  def destroy
    Booking.destroy params[:id]
    redirect_to bookings_path
  end # destroy

  private
  def booking_params
    params.require(:booking).permit(:date_time, :car_reg, :dam_id)
  end # booking_params

end # class Bookings
