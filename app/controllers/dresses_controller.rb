class DressesController < ApplicationController
	def index
		@dresses = Product.where(:category => "dress")
	end
end
