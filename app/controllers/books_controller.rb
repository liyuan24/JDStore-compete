class BooksController < ApplicationController
	def index
		@books = Product.where(:category => "book")
	end
end
