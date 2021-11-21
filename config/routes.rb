Rails.application.routes.draw do
  resources :products
  root 'products#index'

  resources :products, except: [:show]
end
