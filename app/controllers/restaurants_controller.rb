class RestaurantsController < ApplicationController
  def index
    
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
