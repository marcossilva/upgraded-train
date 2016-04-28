Rails.application.routes.draw do

  get 'privacy', to: 'about#privacy', as: 'privacy'

  get 'about', to: 'about#index', as: 'about'

  root 'home#index'

  get 'profile', to: 'home#profile', as: 'profile'

  get 'auth/:provider/callback', to: "sessions#create"

  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
end