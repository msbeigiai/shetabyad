Rails.application.routes.draw do
  resources :tutorial_types
	mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
	mount Commontator::Engine => '/commontator'
	
	devise_for :users
  devise_for :admins, path: 'admin', skip: [:registrations]
	
	root 'welcome#index'
	
 
  
  resources :tutorials, only: [:show, :index]
	resources :lessons#, only: [:show, :index]
	
	authenticate :user do 
		resources :lessons, only: [:show, :index] do 
			member do
				get 'like'
			end
		end
	end
end
