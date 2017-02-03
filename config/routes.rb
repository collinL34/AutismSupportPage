Rails.application.routes.draw do
  resources :users do 
    resources :articles
  end
  resources :articles
  resources :categories
  resources :sessions
  root 'home#index'
end
