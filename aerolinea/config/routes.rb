Rails.application.routes.draw do
  resources :cities
  root "home#index"
  
  resources :pilots
  resources :routes
  resources :airplanes
  resources :airlines
  resources :trips
end
