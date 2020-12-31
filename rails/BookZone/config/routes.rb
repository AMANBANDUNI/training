Rails.application.routes.draw do
  # devise_for :users
  # devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"  }
  
  root to: "home#index"

  # get '/auth/:provider/callback', to: 'sessions#create'
  # post '/auth/:provider/callback', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
