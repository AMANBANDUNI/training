Rails.application.routes.draw do
  # resources :home, only: [:index,:create]
  # get 'products', to: "home#index", as: 'products_path'

  # resources :home, only: [:index,:show,:create] do 
  # 	member do
  # 	  get :preview
  # 	end
  # end

  resources :home, only: [:index,:show,:create] do 
  	collection do
  	  get :preview
  	end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
