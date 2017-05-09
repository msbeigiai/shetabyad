Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins, path: 'admin'
  
  resources :lessons
  root 'welcome#index'

  resources :tutorials
end
