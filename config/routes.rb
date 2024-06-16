Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "rentals" => "rentals#index"
  get "rentals/:id" => "rentals#show"
  post "rentals" => "rentals#create"
  patch "rentals/:id" => "rentals#update"
  delete "rentals/:id" => "rentals#destroy"
  # Defines the root path route ("/")
  # root "posts#index"

  get "rental_images" => "rental_images#index"
  get "rental_images/:id" => "rental_images#show"
  post "rental_images" => "rental_images#create"
  patch "rental_images/:id" => "rental_images#update"
  delete "rental_images/:id" => "rental_images#destroy"

  get "users/:id" => "users#show"
  post "/users" => "users#create"

  # Reservation
  get "/reservations" => "reservations#index"
  get "/reservations/:id" => "reservations#show"
  post "/reservations" => "reservations#create"
  put "/reservations" => "reservations#update"
  delete "reservations" => "reservations#destroy"

  get "reviews" => "reviews#index"
  get "reviews/:id" => "reviews#show"
  post "reviews" => "reviews#create"

end
