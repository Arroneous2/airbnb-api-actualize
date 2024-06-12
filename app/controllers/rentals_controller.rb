class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
    pp @rentals 
    render :index
  end

  def show
    @rental = Rental.find(params[:id])
    render :show
  end

  def create
    @rental = Rental.create(
      user_id: params[:user_id], 
      address: params[:address], 
      city: params[:city], 
      state: params[:state], 
      price: params[:price], 
      description: params[:description], 
      home_type: params[:home_type], 
      rental_type: params[:rental_type], 
      total_occupancy: params[:total_occupancy],
      total_bed_rentals: params[:total_bed_rentals], 
      total_bathrooms: params[:total_bathrooms]
       )
    render :show
  end
end
