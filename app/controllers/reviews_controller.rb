class ReviewsController < ApplicationController

	def new
		@review = Review.new
		@product = Product.find(params[:product_id])
		@review.product = @product
		@review.user = current_user
		@review.save
	end

	def update
		@review = Review.find(params[:id])
		if @review.update(review_params)
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
