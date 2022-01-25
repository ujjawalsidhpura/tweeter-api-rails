Rails.application.routes.draw do

  root 'sessions#home'

  #User Routes
  resources :users, only: [:new, :create, :edit, :update, :show, :distroy]

  #Sessions Routes
  get '/login' to: 'sessions#login'
  post '/login' to: 'sessions#create'
  get '/logout' to: 'sessions#destroy'
  post '/logout' to: 'sessions#destroy'
  
end
