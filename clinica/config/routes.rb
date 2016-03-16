Rails.application.routes.draw do
  root "boys#index"

  resources :boys
end
