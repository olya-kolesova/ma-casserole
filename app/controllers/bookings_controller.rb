class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new
  end

  def create
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new(booking_params)
    @booking.chef = @chef
    @booking.user = current_user
    @booking.save!
    redirect_to :root
  end

    private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
