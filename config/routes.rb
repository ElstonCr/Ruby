Rails.application.routes.draw do
  devise_for :users
  resources :friends

  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'home/about'

  get 'home/privacy'
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#index'

end
