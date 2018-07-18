module OrderPizzaItem

	def total
		(@product.price + @product.extra_toppings.inject(0){|sum,e| sum + e.price }) * amount
	end
end