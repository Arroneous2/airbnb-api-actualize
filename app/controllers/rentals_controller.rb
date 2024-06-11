class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
    pp @rentals 
    render :index
  end
end
