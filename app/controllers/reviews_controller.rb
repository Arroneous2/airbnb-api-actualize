class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find(params[:id])
    render :show
  end

  def create
    @review = Review.create(
    reservation_id: params[:reservation_id],
    rental_id: params[:rental_id],
    user_id: params[:user_id],
    rating: params[:rating],
    comment: params[:comment]
    )
    render :show
  end
end
