class BestsController < ApplicationController
  def create
    @restaurant_id = Restaurant.find(params[:format]).id
    @best = Best.new(restaurant_id: @restaurant_id, user_id: current_user.id)
    redirect_to  restaurant_path(@best.restaurant_id) if @best.save
  end

  def destroy
    @best = Best.find_by(restaurant_id: params[:id], user_id: current_user.id)
    redirect_to  restaurant_path(@best.restaurant_id) if @best.destroy
  end

  def edit
    current_user.best.destroy
    @best = Best.new(restaurant_id: params[:id], user_id: current_user.id)
    redirect_to  restaurant_path(@best.restaurant_id) if @best.save
  end
end
