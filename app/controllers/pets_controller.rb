class PetsController < ApplicationController
  def index
    @pets = Pet.all

    # @mascots = Pet.geocoded # returns flats with coordinates
    # @markers = @mascot.map do |mascot|
    #   {
    #       #lat: mascot.latitude,
    #     lat: 48.0833,
    #       #lng: mascot.longitude
    #     lng: -1.6833,
    #     infoWindow: render_to_string(partial: "info_window", locals: { mascot: mascot }),
    #       #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')   CUSTOM ICONE ON MAP
    #   }
    # end
  end

  def show
    @pet = Pet.find(params[:id])
  end

end
