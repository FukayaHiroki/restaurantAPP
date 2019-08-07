Rails.application.routes.draw do
  devise_for :users
  root 'restaurant#index'
  get 'restaurant/show' => 'restaurant#show'
  resources :users, only: [:show]
  resources :restaurants, only: [:index, :show, :create]
end
