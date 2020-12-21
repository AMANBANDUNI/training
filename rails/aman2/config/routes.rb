Rails.application.routes.draw do
  resources :products

  # get 'products/index'
  # get 'products/show'
  # get 'products/edit'
  # # get 'product/create'
  # get 'products/update'
  # get 'products/destroy'
  # get 'products/new', as: "new_product" 

  root 'products#index'

  # get "/new-product/:id" => 'product/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
