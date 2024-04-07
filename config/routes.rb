Rails.application.routes.draw do

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
 
  get :login , path: '/saimalworld/login', to: 'login#login'
  post :sign_in , to: 'login#sign_in'
  resources :users
  resources :products 
  # Defines the root path route ("/")
  root "home#home"

end
