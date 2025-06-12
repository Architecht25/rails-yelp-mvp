Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    # Nested route: POST /restaurants/:restaurant_id/reviews
    resources :reviews, only: [:create]
  end
end
