class Admin::ProductsController < ApplicationController
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

	private

	def product_params
		params.require(:product).permit(:title, :description, :storage, :price, :image)
	end
end
