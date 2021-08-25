class BookingsController < ApplicationController
  before_action :dry_id_booking, only: [:show, :edit, :update]

  def index 
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @bookmark.save
    # redirect_to booking_path(@booking)
  end

  # def edit; end

  # def update
  #   @chef.find(params[:id])
  #   @booking.update(booking_params)
  #   booking.chef = @chefbooking.user = current_user
  #   redirect_to booking_path(@booking)
  #   redirect_to : root
  # end

    private

  def booking_params
    params.require(:booking).permit(:user_id, :chef_id, :start_date, :end_date)
  end

  def dry_id_booking
    @task = Booking.find(params[:id])
  end
end
