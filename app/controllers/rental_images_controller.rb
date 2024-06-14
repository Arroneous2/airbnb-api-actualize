class RentalImagesController < ApplicationController
  def index
    @rental_images = RentalImage.all
    p @rental_images
    render :index
  end

  def show
    @rental_image = RentalImage.find(params[:id])
    render :show
  end

  def create
    @rental_image = RentalImage.create(
      rental_id: params[:rental_id],
      url: params[:url]
    )
    render :show
  end

  def update
    @rental_image = RentalImage.find(params[:id])
    @rental_image.update(
      rental_id: params[:rental_id] || @rental_image.rental_id,
      url: params[:url] || @rental_image.url
    )
    render :show
  end

  def destroy
    @rental_image = RentalImage.find(params[:id])
    @rental_image.delete
    render json: {message: "rental image has been deleted"}
  end
end
