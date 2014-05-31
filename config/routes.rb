Rails.application.routes.draw do
  devise_for :users

  resources :clients
  resources :donors
  resources :partners
end
