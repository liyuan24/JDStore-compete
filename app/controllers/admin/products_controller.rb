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

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to admin_products_path, alert: "删除商品"
	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :storage, :price, :image, :category)
	end
end
