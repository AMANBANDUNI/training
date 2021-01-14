Rails.application.routes.draw do
  # resources :home, only: [:index,:create]
  get 'products', to: "home#index", as: 'products_path'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
