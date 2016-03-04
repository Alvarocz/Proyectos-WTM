Rails.application.routes.draw do
  root 'home#index'

  resources :productos
  resources :facturas
end
