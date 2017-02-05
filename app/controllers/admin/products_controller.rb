class Admin::ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :validate_query_string, only: [:search]
	layout "admin"

	def index
		@products = Product.all
	end

	def new 
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to admin_products_path, notice: "Create a new product"
		else
			render :new
		end
	end

	def show
		@product = Product.find(params[:id])
	end

	def search
		@products = Product.ransack({:title_cont => @q}).result(:distinct => true)
	end

	protected

	def validate_query_string
		@q = params[:query_string].gsub(/\|\'|\/|\?/, "") if params[:query_string].present?
	end	


	private

	def product_params
		params.require(:product).permit(:title, :description, :storage, :price, :image)
	end
end
