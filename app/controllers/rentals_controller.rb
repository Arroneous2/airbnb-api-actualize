class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
    render :index
  end

  def show
    @rental = Rental.find(params[:id])
    render :show
  end

  def create
    @rental = Rental.create(
      user_id: params[:user_id], 
      name: params[:name], 
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

  def update
    @rental = Rental.find(params[:id])
    @rental.update(
      user_id: params[:user_id] || @rental.user_id, 
      name: params[:name] || @rental.name, 
      address: params[:address] || @rental.address, 
      city: params[:city] || @rental.city, 
      state: params[:state] || @rental.state, 
      price: params[:price] || @rental.price, 
      description: params[:description] || @rental.description, 
      home_type: params[:home_type] || @rental.home_type, 
      rental_type: params[:rental_type] || @rental.rental_type, 
      total_occupancy: params[:total_occupancy] || @rental.total_occupancy,
      total_bed_rentals: params[:total_bed_rentals] || @rental.total_bed_rentals, 
      total_bathrooms: params[:total_bathrooms] || @rental.total_bathrooms
    )
    render :show
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    render json: {message: "Rental has been destroyed."}
  end
end
