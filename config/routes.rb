Rails.application.routes.draw do

  root 'doctors#index'

  resources :users do
    resources :appointments
  end
  
  resources :doctors do
    resources :appointments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
