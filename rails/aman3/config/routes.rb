Rails.application.routes.draw do
  resources :products
  root 'products#index'

  get "/new1/" => "products#new1"
  get "/new2/" => "products#new2"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
