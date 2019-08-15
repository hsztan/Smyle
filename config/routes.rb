Rails.application.routes.draw do
  get '/hearo/panel' => 'hearos#panel', as: 'hearo_panel'
  get '/smyler/panel' => 'smylers#panel', as: 'smyler_panel'
  get '/hearos/verify' => 'hearos#verify', as: 'verify_hearo'

  resources :hearos do
      resources :bookings, only: [:show] do
        resources :meetings, only: [:create]
      end
  end
  resources :hearos do
    resources :reviews, only: [:show, :index]
  end

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
