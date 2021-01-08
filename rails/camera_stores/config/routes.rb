Rails.application.routes.draw do
  # devise_for :users
  namespace 'api' do 
    namespace 'v1' do 
      resources :categories, :products

      devise_for :users,
      controllers: {
        registrations: 		'api/v1/registrations',
        sessions:         'api/v1/sessions'
      }

      devise_scope :user do
        get "/" => "home#index"
      end

      get 'users/products' => 'products#index', :as => :user_products_path
      get 'users/categories' => 'categories#index', :as => :user_categories_path
      get 'users/:id/categories' => 'categories#show', :as => :user_category_path

      get 'users/home' => 'home#show', :as => :user_path

      # get 'users/home' => 'home#show', as => :user_path

      # get 'users/base' => 'base#current_user', :as => :user_path

      # root to: "home#index"
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
