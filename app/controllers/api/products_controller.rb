module Api
	class ProductsController < ApplicationController
		def index
			render json: default_products, status: :ok	
		end
	end
end