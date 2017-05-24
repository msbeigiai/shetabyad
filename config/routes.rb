Rails.application.routes.draw do
  
	root 'welcome#index'

	mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
	mount Commontator::Engine => '/commontator'
	
	devise_for :users
  devise_for :admins, path: 'admin', skip: [:registrations]
	
	resources :tutorial_types, path: "", only: [:show]
	
  resources :tutorials, only: [:show, :index]
	#resources :lessons#, only: [:show, :index]
	
	authenticate :user do 
		resources :lessons, only: [:show, :index] do 
			member do
				get 'like'
			end
		end
	end
end
