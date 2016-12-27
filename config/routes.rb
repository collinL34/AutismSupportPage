Rails.application.routes.draw do
  resources :users
  get '/' => 'users#index'
end
