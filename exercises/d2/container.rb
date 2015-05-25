puts "Welcome to container builder!"
container = {}
boolean = true
while boolean
	puts "What can I do for you?"
	answer = gets
	if(answer.include?("add"))
		answer.slice!("add")
		item = answer.strip
		if(container.has_key?(item))
			value = container[item]
			value += 1
			container.delete(item)
			container[item] = value
		else
			container[item] = 1
		end	


		puts "Added! Your container has:"
		puts container
	elsif(answer.include?("remove"))
		answer.slice!("remove")
		item = answer.strip
		if(container.has_key?(item))
			value = container[item]
			if(value > 1)
				value -= 1
				container.delete(item)
				container[item] = value
			else
				container.delete(item)
			end
		end

		puts "Removed! Your container has:"
		puts container
	elsif(answer.include?("quit"))
		boolean = false
	end	
	puts "Bye!"
end	