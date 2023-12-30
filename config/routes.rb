Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #setting the application home page
  root "articles#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #first
  #get "/articles", to:"articles#index"
  
  ## view single data
  #get "/articles/:id", to: "articles#show"

  #maps all of the conventional routes for a collection of resources, such as articles.
  resources :articles

end
