Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'buys#index'
  resources :buys, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show]
end
