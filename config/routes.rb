Rails.application.routes.draw do
  resources :conditions
  resources :brands
  resources :origins
  resources :categories
  resources :mills
  resources :washes
  resources :listings
  resources :transactions
  resources :favorites
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
