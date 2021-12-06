Rails.application.routes.draw do
  resources :categories
  resources :products
  root 'products#index'

  resources :products, except: [:show]

   
  resources :users 
end
