class RegularProduct < Product

	def type
		'regular'
	end

	def prepare
		ingredients
		cook
		complete
	end

	def cook
		puts "cooking #{@name}, preparation time: #{@preparation_time}"
	end
end