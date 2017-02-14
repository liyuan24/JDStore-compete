class AddImageDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :image_path, :string
  	add_column :products, :image_medium_path, :string
  	add_column :products, :image_thumb_path, :string
  end
end
