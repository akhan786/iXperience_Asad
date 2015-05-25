class Cart
	def initialize
		@items = []
	end

	def items
		@items
	end

	def total_price
		total = 0.0
		@items.each do |item|
			total = total + item.price
		end
	total
	end

	def add(item)
		@items << item
	end	

	def remove(item)
		@items.delete(item)
	end
end




