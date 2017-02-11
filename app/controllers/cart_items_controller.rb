class CartItemsController < ApplicationController
	def destroy
		@cart = current_cart
		@cart_item = @cart.cart_items.find_by(product_id: params[:id])
		@cart_item.destroy
		redirect_to carts_path, notice: "成功删除#{@cart_item.product.title}"
	end

	def update
		@cart = current_cart
		@cart_item = @cart.cart_items.find_by(product_id: params[:id])
		if @cart_item.product.storage >= cart_item_params[:quantity].to_i
			@cart_item.update(cart_item_params)
			redirect_to carts_path
		else
			redirect_to carts_path, alert: "超出库存总量，请减少购买数量"
		end
		
	end

	def buy_now
		@cart_item = current_cart.cart_items.find_by(product_id: params[:cart_item_id])
		@cart_item.buy_now = true
		@cart_item.save
		redirect_to :back
	end

	def not_buy_now
		@cart_item = current_cart.cart_items.find_by(product_id: params[:cart_item_id])
		@cart_item.buy_now = false
		@cart_item.save
		redirect_to :back
	end

	private

	def cart_item_params
		params.require(:cart_item).permit(:quantity)
	end
end
