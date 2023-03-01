class BookingsController < ApplicationController
  before_action :set_pet, only: [:new, :create]
  before_action :set_booking, only: [:show]

  def new
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(start_date: Date.today, end_date: Date.today)
    authorize @pet
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet

    if @booking.save
      redirect_to @booking.pet, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :pet_id, :user_id, :accepted)
  end
end
