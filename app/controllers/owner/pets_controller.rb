class Owner::PetsController < ApplicationController
  def index
        @owner = current_user
        @mypets = @owner.pets
  end
end
