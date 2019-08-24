class FavoritesController < ApplicationController
  def create
    @restaurant_id = Restaurant.find(params[:id]).id
    @favorite = Favorite.new(restaurant_id: @restaurant_id, user_id: current_user.id)
      if @clip.save
        redirect_to user_path(current_user)
      end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if favorite.destroy
      redirect_to user_path(current_user)
    end
  end

  private
  def favorite_params
    params.require(:favorite).permit(:restaurant_id).marge(:current_user.id)
  end
end
