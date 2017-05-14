Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins, path: 'admin'
  
  resources :lessons do 
		member do
			put 'like', to: "lessons#upvote"
		end
	end
	
  root 'welcome#index'

  resources :tutorials
end
