class ProductsController < ApplicationController
	before_action :authenticate_user!, only: [:favor, :unfavor]
	before_action :validate_query_string, only: [:search]

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@reviews = cate_reviews
		if @reviews.count > 0
			@good_percent = @reviews.good.count / @reviews.count
			@fair_percent = @reviews.fair.count / @reviews.count
			@bad_percent = @reviews.bad.count / @reviews.count
		else
			@good_percent = 1
			@fair_percent = 0
			@bad_percent = 0
		end
	end

	def search
		@products = Product.ransack({:title_cont => @q}).result(:distinct => true)
	end

	def favor
		@product = Product.find(params[:id])
		current_user.favor!(@product)
		redirect_to :back
	end

	def unfavor
		@product = Product.find(params[:id])
		current_user.unfavor!(@product)
		redirect_to :back
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

	def cate_reviews	
		case params[:review_cate]
		when "good"
			@product.reviews.good
		when "fair"
			@product.reviews.fair
		when "bad"
			@product.reviews.bad
		else
			@product.reviews
		end
	end
end
