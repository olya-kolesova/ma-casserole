class BookingsController < ApplicationController
  before_action :dry_id_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all.order(created_at: :DESC)
  end

  def show; end

  def new
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.chef = Chef.find(params[:chef_id])
    # @booking.chef = @chef
    if @booking.save
      # redirect_to chef_bookings_path
       redirect_to bookings_path
    else
      @chef = Chef.find(params[:chef_id])
    # redirect_to :root
      render 'chefs/show'
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

    private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def dry_id_booking
    @booking = Booking.find(params[:id])
  end
end
