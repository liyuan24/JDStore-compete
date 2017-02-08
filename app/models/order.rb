class Order < ApplicationRecord
	belongs_to :user
	has_many :product_lists
	validates :billing_name, :billing_address, :receive_name, :receive_address, presence: true
end
