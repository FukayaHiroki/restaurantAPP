Rails.application.routes.draw do
  devise_for :users
  root 'restaurant#index'
  get 'restaurant/show' => 'restaurant#show'
end
