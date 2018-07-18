class Product
	attr_accessor :name, :price, :recipe, :preparation_time

	def initialize(p_name, price, recipe, preparation_time)
		@name = p_name
		@price = price
		@recipe = recipe
		@preparation_time = preparation_time
	end

	def ingredients
		puts "Adding all the ingredients to #{@name}"
	end

	def complete
		puts "#{@name} is ready!"
	end

	def prepare
		raise "Subclasses must define `prepare`."
	end

	def type
		raise "Subclasses must define `type`."
	end
end