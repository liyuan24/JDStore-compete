class AddBuyNowToCartItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :cart_items, :buy_now, :boolean
  end
end
