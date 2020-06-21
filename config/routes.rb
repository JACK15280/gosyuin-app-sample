Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :maps, only: [:index]
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:new, :create, :show, :edit, :update]
  resources :posts do
    resources :comments, only: :create
  end
end
