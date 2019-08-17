class UsersController < ApplicationController
  def index
    
  end
  def show
    @restaurants = current_user.restaurants.page(params[:page]).per(3)
  end
end
