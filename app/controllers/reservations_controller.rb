class ReservationsController < ApplicationController

  def index
    @reservation = Reservation.all
  end
end
