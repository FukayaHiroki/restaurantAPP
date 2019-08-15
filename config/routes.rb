Rails.application.routes.draw do
  devise_for :users
  root 'restaurants#index'
  resources :users, only: [:show]
  resources :restaurants, only: [:index, :show, :create, :new] do
    collection do
      get 'serch'
    end
    resources :comments, only: [:create] 
  end
end
