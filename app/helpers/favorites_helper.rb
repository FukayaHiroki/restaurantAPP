module FavoritesHelper
  def favorite_lists
    html_text = ''
    current_user.favorites.each do |favorite|
      @restaurant = Restaurant.find(favorite.restaurant_id)
      html_text += render(partial: 'favorite_card', locals: {restaurant: @restaurant})
    end
    return raw(html_text)
  end
end
