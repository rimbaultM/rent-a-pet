class ReservationsController < ApplicationController

  def index
    @reservations = current_user.reservations
  end



  def create
    @reservation = Reservation.new(reservation_params)
    @pet = Pet.find(params[:pet_id])
    @reservation.user = current_user
    @reservation.pet = @pet
    @reservation.total_price = (@reservation.end_date - @reservation.start_date)* @pet.price_per_day
    @reservation.status = 'en attente'

    if @reservation.save
      redirect_to reservations_path
    else
      redirect_to pets_path(@pet)
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
    # params.require(:reservation).permit(pet_id, user_id, :start_date, :end_date, :total_price, :status)
  end
end


