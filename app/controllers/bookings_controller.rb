class BookingsController < ApplicationController
  before_action :set_pet, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @booking.pet = @pet

    if @booking.save
      redirect_to @booking.pet, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
