Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "restaurants#index" # Defines the root path route ("/")
  get "restaurants", to: "restaurants#index", as: :restaurants # list of all restaurants
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant # form to create a new restaurant
  post "restaurants", to: "restaurants#create"  # submit the forme and create a new restaurant
  get "restaurants/:id", to: "restaurants#show", as: :restaurant # show a specific restaurant
end
