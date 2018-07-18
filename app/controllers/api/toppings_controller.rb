module Api
	class ToppingsController < ApplicationController
		def index
			render json: default_toppings, status: :ok	
		end
	end
end