class PetsController < ApplicationController
  before_action :set_pet, only: %i[show edit update destroy]

  def index
    @pets = Pet.all
    @pets = policy_scope(Pet)
  end

  def show
    authorize @pet
    @pet_markers = {
        lat: @pet.user.latitude,
        lng: @pet.user.longitude,
        # info_window_html: render_to_string(partial: "info_window", locals: {pet: @pet}),
        marker_html: render_to_string(partial: "pet_marker")
    }

  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def edit
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id
    if @pet.save
      redirect_to @pet, notice: "Your pet was successfully added."
    else
      render :new, status: :unprocessable_entity
    end
    authorize @pet
  end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Your pet was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
    authorize @pet
  end

  def destroy
    @pet.destroy
    redirect_to pets_url, notice: "Your pet was successfully removed."
    authorize @pet
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :age, :gender, :description, :special_notes, :price, :photo)
  end
end
