module Api
	module OrderHelper
		def proccess_order(params)
			@order = Order.new params[:user], params[:send_order], params[:credit_card], params[:address]
			create_items params[:items]
			@order.prepare
		end

		def create_items items
			products = default_products

			items.each do |item|
				product = products[item[:id]].clone
				order_item = OrderItem.new product, item[:amount]
				order_item = 
				if product.type == 'pizza'
					product.extra_toppings = []
					product.size = 'personal'.to_sym
					order_item.extend(OrderPizzaItem)
				else
					order_item.extend(OrderRegularItem)
				end

				@order.items << order_item
			end
			
		end
	end
end