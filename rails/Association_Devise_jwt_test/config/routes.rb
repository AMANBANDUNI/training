Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }

  root to: "home#index"

  namespace 'api' do 
    namespace 'v1' do 
      resources :images

      devise_for :users,
      controllers: {
        registrations: 		'api/v1/registrations',
        sessions:         'api/v1/sessions'
      }

      devise_scope :user do
        get "/" => "home#index"
      end

      get 'users/home', to: 'home#show', as: 'user_path'
      

    end
  end
  get 'user/:id/images/', to: 'home#show_images', as: "user_images"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
