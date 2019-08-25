module UsersHelper
  def best_restaurant
    if current_user.best.present?
      best_restaurant = Restaurant.find(current_user.best[:restaurant_id])
    else
      return best_restaurant
    end
  end
end
