Rails.application.routes.draw do
  resources :languages
  resources :courses
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      post "/login", to: "authentication#login" 
    end
  end  
  
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :courses, only: [:index, :show, :create] 
        resources :user_languages, only: [:index, :create, :update, :destroy] 
      end
    
      resources :courses, only: [:show, :update, :destroy] 
      resources :languages, only: [:index, :show] 
    end
  end
end
