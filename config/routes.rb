Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users

  resources :users, only: [:show]
  
  resources :posts do
    resources :comments, only: [:index, :new, :create]
    resources :likes, only: [:show, :create, :destroy]
  end

  get 'ranking', to: 'posts#rank'

  get 'search', to: 'posts#search'
end
