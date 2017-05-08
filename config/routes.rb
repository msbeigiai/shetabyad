Rails.application.routes.draw do
  devise_for :users
  resources :lessons
  root 'welcome#index'

  resources :tutorials
end
