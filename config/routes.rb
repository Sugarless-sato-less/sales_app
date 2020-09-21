Rails.application.routes.draw do
  resources :users, only:[:edit, :update]
  resources :targets, only:[:new, :create, :edit, :update]
  resources :sales, only:[:new, :create, :edit, :update]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'sales#home'
end
