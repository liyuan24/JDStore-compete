class CartsController < ApplicationController

	def index
		@cart_items = current_cart.cart_items
	end

	def clean
		current_cart.clean!
		redirect_to carts_path, alert: "清空购物车"
	end
end
