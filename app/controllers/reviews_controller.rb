class ReviewsController < ApplicationController
	def new
		@review = Review.new
		@product = Product.find(params[:product_id])
	end

	def create
		@product = Product.find(params[:product_id])
		@review = Review.new(review_params)
		@review.user = current_user
		@review.product = @product
		if @review.save
			redirect_to account_orders_path
		else
			render :new
		end
	end

	private

	def review_params
		params.require(:review).permit(:content)
	end
end
