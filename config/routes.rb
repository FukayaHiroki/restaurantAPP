Rails.application.routes.draw do
  devise_for :users
  root 'restaurants#index'
  resources :users, only: [:show]
  resources :restaurants, only: [:index, :show, :create, :new]
end
