Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: 'tweets#index'
  resources :tweets do
    resources :comments
  end
  resources :users, only: :show
end
