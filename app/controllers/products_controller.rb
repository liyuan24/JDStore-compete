class ProductsController < ApplicationController

	before_action :validate_query_string, only: [:search]

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def search
		@products = Product.ransack({:title_cont => @q}).result(:distinct => true)
	end

	protected

	def validate_query_string
		@q = params[:query_string].gsub(/\|\'|\/|\?/, "") if params[:query_string].present?
	end	
end
