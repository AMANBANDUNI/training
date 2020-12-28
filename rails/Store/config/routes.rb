Rails.application.routes.draw do
  resources :products
  root 'products#index'

  get "/new1/" => "products#new1"
  get "/new2/" => "products#new2"

  post "multiple_destroy", to: "products#multiple_destroy", as: "products_destroy"

  get "/soft-delete/:id" => "products#soft_delete"
  get "un-delete/:id" => "products#un_delete"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
