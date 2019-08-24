class FavoritesController < ApplicationController
  def create
    @restaurant_id = Restaurant.find(params[:format]).id
    @favorite = Favorite.new(restaurant_id: @restaurant_id, user_id: current_user.id)
    redirect_to  restaurant_path(@favorite.restaurant_id) if @favorite.save
  end

  def destroy
    @favorite = Favorite.find_by(restaurant_id: params[:id], user_id: current_user.id)
    redirect_to  restaurant_path(@favorite.restaurant_id) if @favorite.destroy
  end
end
