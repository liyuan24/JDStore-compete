class WinesController < ApplicationController
	def index
		@wines = Product.where(:category => "wine")
	end
end
