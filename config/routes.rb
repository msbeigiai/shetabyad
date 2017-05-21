Rails.application.routes.draw do
	root 'welcome#index'
	
  mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins, path: 'admin', skip: [:registrations]#, controllers: { registrations: 'admins/registrations' }
  resources :tutorials, only: [:show, :index]
	resources :lessons, only: [:show, :index]
	
	authenticate :user do 
		resources :lessons, only: [:show, :index] do 
			member do
				get 'like'
			end
			resources :comments
		end
		
	end
end
