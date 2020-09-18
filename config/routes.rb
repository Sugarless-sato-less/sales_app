Rails.application.routes.draw do
  resources :users, only:[:edit, :update]
  resources :sessions, only:[:new, :create, :destroy]
  resources :targets, only:[:new, :create, :edit, :update]
  resources :sales, only:[:new, :create, :edit, :update]
  root 'sales#home'
end
