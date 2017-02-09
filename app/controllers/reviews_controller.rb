class ReviewsController < ApplicationController
	def index
		@product = Product.find(params[:id])
		@reviews = Review.find_by_product_id(@product.id)
	end
end
