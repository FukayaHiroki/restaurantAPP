Rails.application.routes.draw do
  devise_for :users
  root 'restaurants#index'
  resources :users, only: [:index, :show]
  resources :restaurants do
    collection do
      get 'serch'
      get 'detail'
    end
    resources :comments, only: [:create] 
  end
  resources :favorites, only: [:create, :destroy, :index]
end
