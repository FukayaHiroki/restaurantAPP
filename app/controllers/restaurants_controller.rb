class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:index, :serch]
  def index
    @q = Restaurant.ransack(params[:q])
    @detail = Detail.all
    @restaurants = @q.result(distinct: true)
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def serch
    @restaurants = Restaurant.where('name LIKE(?)', "%#{params[:name]}%")
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    Restaurant.create(restaurant_params) ? (redirect_to root_path) : (render :new)
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.images.build
    @restaurant.build_detail
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    redirect_to user_path(current_user.id) if @restaurant.destroy
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  
  def update
    @restaurant = Restaurant.find(params[:id])
    redirect_to root_path if @restaurant.update(restaurant_params)
    
  end

  def detail
    @details = Detail.ransack(search_params).result(distinct: true).includes(:restaurant)
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :tabelog, :shopurl, :content, :detail, images_attributes: [:url], detail_attributes: [:genre, :scene]).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:q).require(:detail).permit(:genre_eq ,:scene_eq)
  end

  def set_restaurant
    @restaurants = Restaurant.all
  end
end
