class RestaurantsController < ApplicationController
  def index
    # @restaurants = Restaurant.order("RAND()").limit(3).includes(:image)
    @restaurant = Restaurant.find_by(id: 1)
  end

  def show
    
  end

  def create
    Restaurant.create(restaurant_params) ? (redirect_to root_path) : (render :new)
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.images.build
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :tabelog, :shopurl, :content,images_attributes: [:url])
  end
end
