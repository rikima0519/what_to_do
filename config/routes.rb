Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  resources :users, only: [:edit, :update]
  resources :lists, only:[:new, :create, :edit, :update, :destroy]
end
 