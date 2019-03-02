Rails.application.routes.draw do

  resources :secret_codes
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users', to: 'home#users'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
