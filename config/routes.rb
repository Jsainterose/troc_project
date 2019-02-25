Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :annonces
  resources :categories
  root 'annonces#index'
end
