Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Routes for Google authentication

  root to: 'welcome#home'
  #get ‘auth/:provider/callback’, to: ‘sessions#googleAuth’
  #get ‘auth/failure’, to: redirect(‘/’)
end
