Rails.application.routes.draw do
  get '/hearos/verify' => 'hearos#verify', as: 'verify_hearo'
  resources :hearos

  resources :reviews
  resources :meetings
  resources :bookings
  resources :smylers
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routes for Google authentication

  root to: 'welcome#home'
  get '/login' => 'smylers#new'
  get '/logout' => 'sessions#destroy', as: 'logout'
  get '/smyler/signup' => 'smylers#new'

  #facebook oauth2 routes
  get '/auth/:provider/callback' => 'smylers#create'
end
