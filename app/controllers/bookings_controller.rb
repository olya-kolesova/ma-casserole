class BookingsController < ApplicationController
  before_action :dry_id_booking, only: [:show, :edit, :update]

  def index
    @bookings = Booking.all
  end

  def show; end

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
    params.require(:booking).permit(:start_date, :end_date)
  end

  def dry_id_booking
    @task = Booking.find(params[:id])
  end
end
