class BookingsController < ApplicationController
  before_action :set_pet, only: [:new, :create]

  before_action :set_booking, only: [:show]

  def new
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(start_date: Date.today, end_date: Date.today)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user


  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.new(booking_params)


  def show
  end


  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pet_id, :user_id, :accepted)

  end
end
