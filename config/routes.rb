Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :admin_user
  
  resources :lessons
  root 'welcome#index'

  resources :tutorials
end
