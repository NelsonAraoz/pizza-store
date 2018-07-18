class Pizza < Product
	attr_accessor :slices, :cheese_type, :border_type, :sauce_type, :extra_toppings, :size

	CHEESES = [:mozzarella, :provolone, :parmesano, :gouda]
	BORDERS = [:thick, :thin, :filled]
	SAUCES = [:pesto, :bechamel, :humus, :bbq]
	SIZES = {:personal => {slices: 4}, :small => {slices: 6}, :medium => {slices: 8}, :large => {slices: 12}}

	def type
		'pizza'
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
		SIZES[@size]
	end

	def price
		@price[@size]
	end

	def prepare
		ingredients
		bake
		cut
		box
		complete
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