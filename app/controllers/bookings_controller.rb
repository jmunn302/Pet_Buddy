class BookingsController < ApplicationController
  before_action :set_pet, only: [:new, :create]
  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(start_date: Date.today, end_date: Date.today, accepted: false)
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet
    authorize @booking
<<<<<<< Updated upstream
=======
    # lalalalala
>>>>>>> Stashed changes

    if @booking.save
      redirect_to @booking.pet, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    authorize @booking
  end

  def accept
    @booking.accepted = true
    @booking.save
    redirect_to @booking.pet, notice: 'Booking was accepted.'
  end

  def reject
    @booking.accepted = false
    @booking.save
    redirect_to @booking.pet, notice: 'Booking was rejected.'
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
