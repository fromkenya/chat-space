Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'
  resources :users, only: [:update, :edit]
  resources :groups, only: [:new, :create, :edit, :update]
end
