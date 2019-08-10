class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:index, :serch]
  def index
  end

  def show
    
  end

  def serch

  end

  def create
    Restaurant.create(restaurant_params) ? (redirect_to root_path) : (render :new)
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.images.build
    @restaurant.build_detail
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :tabelog, :shopurl, :content, :detail, images_attributes: [:url], detail_attributes: [:genre])
  end

  def set_restaurant
    @restaurants = Restaurant.all
  end
end
