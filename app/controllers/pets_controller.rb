class PetsController < ApplicationController
  before_action :set_pet, only: %i[show edit update destroy]

  def index
    @pets = Pet.all
    @pets = policy_scope(Pet)
  end

  def show
    authorize @pet
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
    params.require(:pet).permit(:name, :species, :age, :gender, :description, :special_notes, :price)
  end
end
