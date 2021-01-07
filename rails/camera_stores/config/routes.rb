Rails.application.routes.draw do
  # devise_for :users
  namespace 'api' do 
    namespace 'v1' do 
      resources :categories, :products

      devise_for :users,
      controllers: {
        registrations: 		'api/v1/registrations'
        sessions:         'api/v1/sessions'
    end
  end

  # devise_scope :user do
  #   get "/" => "home#index"
  # end

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
