class Owner::ReservationsController < ApplicationController

  def index
    @reservations = Reservation.joins(:pet).where(pets: { user: current_user })
  end

  def accept
   @reservation = Reservation.find(params[:id])
   @reservation.status = "Accepté"
   @reservation.save!
   redirect_to owner_reservations_path
  end

  def decline
   @reservation = Reservation.find(params[:id])
   @reservation.status = "Decliné"
   @reservation.save!
   redirect_to owner_reservations_path
  end
end
