class PagesController < ApplicationController

    def index

    end

    def dashboard
        @bookings = Booking.all
        @users = User.all
        @dams = Dam.all
    end


end

