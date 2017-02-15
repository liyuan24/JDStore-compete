class CarsController < ApplicationController
	def index
		@cars = Product.where(:category => "car")
	end
end
