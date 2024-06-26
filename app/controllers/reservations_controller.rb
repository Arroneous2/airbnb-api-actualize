class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end

  def create
    @reservation = Reservation.create(
      user_id: params[:user_id],
      rental_id: params[:rental_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      price: params[:price],
      total: params[:total]
    )
    render :show
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.update(
      user_id: params[:user_id] || @reservation.user_id,
      rental_id: params[:rental_id] || @reservation.rental_id,
      start_date: params[:start_date] || @reservation.start_date,
      end_date: params[:end_date] || @reservation.end_date,
      price: params[:price] || @reservation.price,
      total: params[:total] || @@reservation.total
    )
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    render json: { message: "This reservation has been cancelled" }
  end

end