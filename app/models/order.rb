class Order
	attr_accessor :items, :send_order, :user, :credit_card, :address

	def initialize(user, send_order, credit_card, address)
		@user = user
		@send_order = send_order
		@credit_card = credit_card
		@address = address
		@items = []
	end

	def send_order?
		@send_order 
	end

	def prepare
		accept
		charge
		prepare_products
		send_order if @send_order 
	end

	def accept
		puts "Order for #{@user} Accepted"
	end

	def charge
		total = @items.inject(0){|sum,item| sum + item.total }
		puts "Charging #{total} from credit card: #{@credit_card}"
	end

	def prepare_products
		puts "Preparing order for #{@user}:"
		items.each { |item| item.prepare }
	end

	def send_order
		puts "Sending Order to address: #{@address}"
	end

end