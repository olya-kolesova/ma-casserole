class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @bookmark.save
    # redirect_to booking_path(@booking)
  end

    private

  def booking_params
    params.require(:booking).permit(:user_id, :chef_id, :start_date, :end_date)
  end
end
