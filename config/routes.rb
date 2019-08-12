Rails.application.routes.draw do
  resources :hearos
  resources :reviews
  resources :meetings
  resources :smylers
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routes for Google authentication

  root to: 'welcome#home'
  get '/login' => 'smylers#new'
  get '/smyler/signup' => 'smylers#new'

  #facebook oauth2 routes
  get '/auth/:provider/callback' => 'smylers#create'
end
