class Order < ApplicationRecord
	belongs_to :user
	before_create :generate_random_token
	has_many :product_lists
	validates :billing_name, :billing_address, :receive_name, :receive_address, presence: true

	def generate_random_token
		self.token = SecureRandom.uuid
	end

	def set_payment_with!(method)
		self.update_column :payment_method, method
	end

	def pay!
		self.update_columns(is_paid: true)
	end

end
