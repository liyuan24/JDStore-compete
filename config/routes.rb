Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :products do
    resources :reviews
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
      post :select_all
      post :remove_all
  	end
  end

  resources :cart_items do
    member do
      post :buy_now
      post :not_buy_now
      post :plus_quantity
      post :minus_quantity
    end
  end
  
  resources :orders

  namespace :admin do
  	resources :products
  end

  namespace :account do
  	resources :orders
  end

  resources :books
  resources :cars
  resources :dresses
  resources :wines
end
