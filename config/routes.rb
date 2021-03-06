Rails.application.routes.draw do

  devise_for :users

  root 'homes#top'
  get 'users/show'
  get "users/:id/favorites" => "users#favorites"
  get 'buys/rank' => 'buys#rank'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :buys, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :releases, only: [:new, :create, :index, :show, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end
