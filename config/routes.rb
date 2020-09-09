Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'buys#index'
  resources :buys, only: [:new, :create, :index, :show, :destroy] do
    resources :releases, only: [:new, :create, :index, :show, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end
