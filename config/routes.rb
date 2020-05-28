Rails.application.routes.draw do
  resources :photos
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

  get '/persist', to: 'auth#persist'
  post '/login', to: 'auth#login'
  post '/charges', to: 'charges#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
