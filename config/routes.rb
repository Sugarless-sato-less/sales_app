Rails.application.routes.draw do
  resources :targets, only:[:new, :create, :edit, :update]
  resources :sales, only:[:new, :create, :edit, :update]
  root 'sales#home'
end
