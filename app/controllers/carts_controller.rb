class CartsController < ApplicationController

	def index
		@cart_items = current_cart.cart_items
	end

	def clean
		current_cart.clean!
		redirect_to carts_path, alert: "清空购物车"
	end

	def checkout
		@cart_items = current_cart.cart_items.where(:buy_now => true)
		@order = Order.new
	end

	def select_all
		current_cart.select_all!
		redirect_to carts_path
	end

	def remove_all
		current_cart.remove_all!
		redirect_to carts_path
	end
end
