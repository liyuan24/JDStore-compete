class Product < ApplicationRecord
	mount_uploaders :pictures, PictureUploader
	has_many :user_product_relationships
	has_many :favered_bys, :through => :user_product_relationships, :source => :user
	has_many :reviews

	ratyrate_rateable "quality", "packing", "delivery_speed", "delivery_attitude"

	def average_score
		self.average("quality").avg
	end
end
