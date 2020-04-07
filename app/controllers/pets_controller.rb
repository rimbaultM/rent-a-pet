class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(pet_params)
  end

private

  def pet_params
    params.require(:pet).permit(:name, :description, :species, :price_per_day, :photo)
  end

end
