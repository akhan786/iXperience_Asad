puts "Enter a number:"
fib = gets.to_i
value = nil
if (fib == 1 || fib == 2)
	value = 1
end	
if(fib > 2)
	i = fib - 1
	first = 1
	second = 1
	while(i > 1)
	value = first + second
	first = second
	second = value
	i -=1
end
end
puts value



