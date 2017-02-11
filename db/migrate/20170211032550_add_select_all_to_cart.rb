class AddSelectAllToCart < ActiveRecord::Migration[5.0]
  def change
  	add_column :carts, :select_all, :boolean, :default => true
  end
end
