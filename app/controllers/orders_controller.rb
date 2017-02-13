class OrdersController < ApplicationController
	before_action :authenticate_user!, only: [:create]
	# after_create :clean_cart
	def create
		@order = Order.new(order_params)
		@order.user = current_user
		@order.total = current_cart.total_price
		if @order.save
			create_product_list
			clean_cart
			redirect_to order_path(@order.token)
		else
			render "carts/checkout"
		end
	end

	def show
		@order = Order.find_by_token(params[:id])
		@product_lists = @order.product_lists
	end

	private

	def order_params
		params.require(:order).permit(:billing_name, :billing_address, :receive_name, :receive_address)
	end

	def create_product_list
		current_cart.cart_items.each do |cart_item|
			product_list = ProductList.new
			product_list.order = @order
			product_list.product_name = cart_item.product.title
			product_list.product_price = cart_item.product.price 
			product_list.product_id = cart_item.product.id
			product_list.quantity = cart_item.quantity
			product_list.save
		end
	end

	def clean_cart
		current_cart.clean!
	end
end
