class Owner::PetsController < ApplicationController
  def index
        @owner = current_user
        @mypets = @owner.pets
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new'
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :description, :price_per_day, :photo)
  end


end


