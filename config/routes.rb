Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  #resources :categories, only: [:index]
  root 'welcome#index'
  resources :courses, only: [:show, :index]
	devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", confirmations: "users/confirmations" }
  devise_for :admins, path: 'admin', skip: [:registrations]
	mount RailsAdmin::Engine => '/user_admin', as: 'rails_admin'
	mount Commontator::Engine => '/commontator'
  
  resources :blogs, path: "blog", only: [:show, :index]
  
	# get '/courses', to: redirect("http://courses.shetabyad.com/")
  
	get 'about-us', to: :about_us, controller: 'welcome'
	match '/contacts', path: 'contact-us', to: 'contacts#new', via: 'get'
	resources 'contacts', path: 'contact-us', only: [:new, :create]
	
  resources :tutorials, only: [:show, :index]
	
  
	#authenticate :user do 
		resources :lessons, only: [:show, :index] do 
			member do
				get 'like'
			end
		end
	#end
  
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  
  resources :tutorial_types, path: "", only: [:show]
end
