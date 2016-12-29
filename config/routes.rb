Rails.application.routes.draw do
  resources :users
  get '/' => 'articles#index'
end
