module Api
	class OrdersController < ApplicationController
		include OrderHelper

		def perform
			proccess_order params
			render json: {message: 'Order Completed!'}, status: :ok	
		end
	end
end