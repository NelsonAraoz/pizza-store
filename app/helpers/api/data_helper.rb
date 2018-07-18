module Api
	module DataHelper

		def default_products

			#Pizzas
			hawaian = Pizza.new 'Hawaian', {personal: 10, small: 20, medium: 30, large: 40}, 'Add Pineapple', 50
			veggie = Pizza.new 'Veggie', {personal: 7, small: 17, medium: 27, large: 37}, 'Only veggetables', 55
			marinara = Pizza.new 'Marinara', {personal: 11, small: 21, medium: 31, large: 45}, 'Add Tomatoes', 40
			anchovies = Pizza.new 'Anchovies', {personal: 15, small: 25, medium: 35, large: 47}, 'Add extra anchovies', 35
			
			#Others
			lagsagna = RegularProduct.new 'Lagsagna', 20 , 'Regular lagsagna', 40
			salad = RegularProduct.new 'Letuicce Salad', 11, 'Add lettuice', 20
			spaghetti = RegularProduct.new 'Spaghetti,', 16, 'Add spaghetti, Add meat balls', 30

			[hawaian, veggie, marinara, anchovies, lagsagna, salad, spaghetti]
		end

		def default_toppings
			tomato = Topping.new 'Tomato', 1
			pepperoni = Topping.new 'Pepperoni', 3
			sausage = Topping.new 'Sausage', 2
			bacon = Topping.new 'Bacon', 4

			[tomato, pepperoni, sausage, bacon]
		end
	end
end