Rails.application.routes.draw do
	root 'welcome#index'
	
  mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins, path: 'admin'
  resources :tutorials, only: [:show, :index]
	resources :lessons, only: [:show, :index]
	authenticate :user do 
		resources :lessons, only: [:show, :index] do 
			member do
				put 'like', to: "lessons#upvote"
			end
		end
		
	end
end
