Rails.application.routes.draw do
  resources :users
  resources :sessions
  root 'home#index'
end
