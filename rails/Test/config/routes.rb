Rails.application.routes.draw do
  # resources :products, only: [:index,:create]
  # get 'products', to: "products#index", as: 'products_path'

  # resources :products, only: [:index,:show,:create] do 
  # 	member do
  # 	  get :preview
  # 	end
  # end

  resources :products do 
  	member do
  	  get :preview
  	end
    collection do
      post :multiple_destroy
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
