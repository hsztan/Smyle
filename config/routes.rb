Rails.application.routes.draw do
  resources :hearos
  resources :reviews
  resources :meetings
  resources :smylers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routes for Google authentication

  root to: 'welcome#home'
  get '/login' => 'sessions#new'
  get '/signup' => 'smylers#new'

  #facebook oauth2 routes
  get '/auth/:provider/callback' => 'smylers#create'
end
