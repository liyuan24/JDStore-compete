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

  resources :carts do
  	collection do
  		delete :clean
  		post :checkout
  	end
  end

  resources :cart_items
  resources :orders

  namespace :admin do
  	resources :products
  end

  namespace :account do
  	resources :orders
  end
end
