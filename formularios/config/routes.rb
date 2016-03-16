Rails.application.routes.draw do
  root "users#index"

  put '/contact', to: "users#contact"
end
