class Pizza < Product
	attr_accessor :slices, :cheese_type, :border_type, :sauce_type, :extra_toppings, :size

	CHEESES = [:mozzarella, :provolone, :parmesano, :gouda]
	BORDERS = [:thick, :thin, :filled]
	SAUCES = [:pesto, :bechamel, :humus, :bbq]
	SIZES = {:personal => {slices: 4}, :small => {slices: 6}, :medium => {slices: 8}, :large => {slices: 12}}

	def type
		'pizza'
	end

	def add_pizza_params(cheese_type, border_type, sauce_type,size)
		@cheese_type = cheese_type.to_sym
		@border_type = border_type.to_sym
		@sauce_type = sauce_type.to_sym
		@extra_toppings = []
		@size = size.to_sym
	end

	def cheese_type=(str)
		@cheese_type = CHEESES.index(str)
	end

	def cheese_type
		CHEESES[@cheese_type]
	end

	def border_type=(str)
		@border_type = BORDERS.index(str)
	end

	def border_type
		BORDERS[@border_type]
	end

	def sauce_type=(str)
		@sauce_type = SAUCES.index(str)
	end

	def sauce_type
		SAUCES[@sauce_type]
	end

	def size=(str)
		size = SIZES[str]
		@slices = size[:slices]
		@size = str if !size.nil?
	end

	def size
		@size
	end

	def price
		@price[@size]
	end

	def prepare
		ingredients
		select_options
		bake
		cut
		box
		complete
	end
	def select_options
		puts "cheese: #{@cheese_type}"
		puts "sauce: #{@sauce_type}"
		puts "border type: #{@border_type}"
		puts "size: #{@size}"
	end
	def bake
		puts "Baking #{@name}, Baking time: #{@preparation_time}"
	end

	def cut
		puts "Cuting #{@name} in #{@slices} slices"
	end

	def box
		puts "Boxing #{@name}"
	end

end