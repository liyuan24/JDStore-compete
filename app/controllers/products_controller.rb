class ProductsController < ApplicationController
	before_action :authenticate_user!, only: [:favor, :unfavor]
	before_action :validate_query_string, only: [:search]

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@reviews = Review.find_by_product_id(@product.id)
	end

	def search
		@products = Product.ransack({:title_cont => @q}).result(:distinct => true)
	end

	def favor
		@product = Product.find(params[:id])
		current_user.favor!(@product)
		redirect_to products_path
	end

	def unfavor
		@product = Product.find(params[:id])
		current_user.unfavor!(@product)
		redirect_to products_path
	end

	def add_to_cart
		@product = Product.find(params[:id])
		if current_cart.products.include?(@product)
			redirect_to :back, alert: "此商品已经加入购物车"
		else
			current_cart.add_product_to_cart(@product)
			redirect_to :back, notice: "加入购物车"
		end
		
	end


	protected

	def validate_query_string
		@q = params[:query_string].gsub(/\|\'|\/|\?/, "") if params[:query_string].present?
	end	
end
