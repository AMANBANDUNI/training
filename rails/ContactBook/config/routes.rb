Rails.application.routes.draw do
  # devise_for :users
  resources :contacts
  devise_for :users, controllers: {
    sessions: 		'users/sessions',
    registrations: 	'users/registrations'
  }
  root to: "home#index"

  namespace 'api' do 
  	namespace 'v1' do
  	  devise_for :users,
      controllers: {
        registrations: 		'api/v1/registrations',
        sessions:         'api/v1/sessions'
      }
      devise_scope :user do
        get "/" => "home#index"
      end
  	end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
