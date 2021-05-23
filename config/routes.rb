Rails.application.routes.draw do

  # Home APIs
  get '/home', to: 'home#index'
  root to: 'home#index'
  get '/collection/:type', to: 'home#collection'
  get '/help', to: 'home#help'
  post '/save', to: 'home#save'
  get '/home/login', to: 'home#login'

  # Twitter APIs
  get '/auth/twitter/callback', to: 'omniauth_callbacks#twitter'

  # User APIs
  get 'users/new'
  get 'sessions/new'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 

  # Update User
  get 'users/update', to: 'users#update'
  post 'users/update', to: 'users#update'

  # Item APIs
  get '/item/:id', to: 'items#show'

  # Put item into shopping bag
  post '/item/tobag', to: 'items#tobag'

  # Filter APIs
  get '/filter', to: 'items#filter'
  post '/filter', to: 'items#filter'

  # Search API
  get '/items/search', to: 'items#search'
  post '/items/search', to: 'items#search'

  # Favourite API
  post '/favourite', to: 'items#favourite'

  # Shoppingbag APIs
  post '/shoppingbag/add', to: 'shoppingbags#add'
  get '/shoppingbag/index', to: 'shoppingbags#index'
  post '/shoppingbag/checkout', to: 'shoppingbags#checkout'
  post '/shoppingbag/rating_checkout', to: 'shoppingbags#rating_checkout'

  # Delete an item from shopping bag
  post '/shoppingbag/delete', to: 'shoppingbags#delete'

  resources :users

  post '/email', to: 'home#submit'

  # Forgot password APIs 
  post '/emailpassword', to: 'home#passwordsubmit'
  get '/forgotpassword', to: 'home#forgot'

  get '/forgotpassword/edit', to: 'home#resetpass'
  post '/changepassword', to: 'home#resetpass' 

  # Admin dashboard APIs
  get '/admin', to: 'admin_page#index'

  # Unsubscribe to newsletter APIs
  post '/home/unsubscribe', to: 'home#unsubscribe'
end
