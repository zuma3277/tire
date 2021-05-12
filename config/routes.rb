Rails.application.routes.draw do
  devise_for :users

  root "top#index"

  root "messages#index"
  resources :users, only: [:edit, :update]
end
