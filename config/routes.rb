Rails.application.routes.draw do
  resources :cars
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  devise_for :models
  root 'cars#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
