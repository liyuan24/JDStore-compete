class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :user_product_relationships
	has_many :favered_bys, :through => :user_product_relationships, :source => :user
	has_many :reviews
end
