Rails.application.routes.draw do
  resources :users
  resources :articles
  resources :categories
  resources :sessions
  root 'home#index'
end
