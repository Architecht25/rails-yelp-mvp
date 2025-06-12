class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]

  def create
    @review = @restaurant.reviews.new(review_params)

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
    else
      @restaurant = Restaurant.find(params[:restaurant_id])
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
