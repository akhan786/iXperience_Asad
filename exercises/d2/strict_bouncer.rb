puts "Welcome to da hip hoppin club. What's your age?"
age = gets.to_i
if age > 21 && age < 65
	puts "Aw yeah c'mon in"
elsif age >= 65
	puts "Go back to the nursing home!"	
else
	puts "Too young, fool"	
end	