Rails.application.routes.draw do

  root 'orders#index'
  resources :orders, only: [:index]
  resources :clients, :sellers, except: [:destroy, :show]
end
