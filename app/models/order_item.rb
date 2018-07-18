class OrderItem
	attr_accessor :product, :amount

	def initialize(product, amount)
		@product = product
		@amount = amount
	end

	def prepare
		@product.prepare
	end
end