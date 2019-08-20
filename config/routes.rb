Rails.application.routes.draw do
  devise_for :users
  root 'restaurants#index'
  resources :users, only: [:index, :show]
  resources :restaurants, only: [:index, :show, :create, :new, :destroy, :edit, :update] do
    collection do
      get 'serch'
      get 'detail'
    end
    resources :comments, only: [:create] 
  end
end
