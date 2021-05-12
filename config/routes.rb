Rails.application.routes.draw do

  # Home APIs
  get '/home', to: 'home#index'
  root to: 'home#index'
  get '/collection/:type', to: 'home#collection'
  get '/help', to: 'home#help'
  post '/save', to: 'home#save'

  # User APIs
  get 'users/new'
  get 'sessions/new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 

  resources :users
end
