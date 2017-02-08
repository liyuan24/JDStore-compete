class Order < ApplicationRecord
	belongs_to :user
	before_create :generate_random_token
	has_many :product_lists
	validates :billing_name, :billing_address, :receive_name, :receive_address, presence: true

	def generate_random_token
		self.token = SecureRandom.uuid
	end

end
