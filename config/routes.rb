Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :products do
  	collection do
  		get :search
  	end
  	member do
  		post :favor
  		post :unfavor
  		post :add_to_cart
  	end
  end

  resources :carts
 
  namespace :admin do
  	resources :products
  end
end
