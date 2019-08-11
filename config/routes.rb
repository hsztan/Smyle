Rails.application.routes.draw do
  resources :reviews
  resources :meetings
  resources :hearoes
  resources :smylers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routes for Google authentication

  root to: 'welcome#home'
  get '/login' => 'sessions#new'
  get '/signup' => 'smylers#new'
  #get ‘auth/:provider/callback’, to: ‘sessions#googleAuth’
  #get ‘auth/failure’, to: redirect(‘/’)
end
