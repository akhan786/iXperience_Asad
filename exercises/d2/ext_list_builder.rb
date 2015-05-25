puts "Welcome to list builder++!"
list = []
boolean = true
while boolean
	puts "What can I do for you?"
	answer = gets
	if(answer.include?("add"))
		answer.slice!("add")
		item = answer.strip
		list << item
		puts "Added! Your list is:"
		puts list
	elsif(answer.include?("remove"))
		answer.slice!("remove")
		item = answer.strip
		list.delete(item)
		puts "Removed! Your list is:"
		puts list
	elsif(answer.include?("quit"))
		boolean = false
	end			






end
puts "Bye!"	