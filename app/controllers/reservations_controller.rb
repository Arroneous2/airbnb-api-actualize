class ReservationsController < ApplicationController
  
  # @start_date = Date.parse(params[:reservation][:start_date])
  # @end_date = Date.parse(params[:reservation][:end_date])
  # @total_days = (end_date - start_date).to_i
  # @total = (price * total_days)
  
  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @preservation = Reservation.find_by(id: params[:id])
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
    if reservation.save
      render template: "reservations/show"
    else render json: { message: "Reservation could not be created." }
    end
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