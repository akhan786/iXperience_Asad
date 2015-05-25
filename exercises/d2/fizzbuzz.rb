i = 1
while i < 101
	if(i % 3 == 0 && i % 5 == 0)
		puts "fizzbuz"
		
		i +=1
	elsif(i % 3 == 0)
		puts "fizz"
		i +=1
	elsif(i % 5 == 0)
		puts "buzz"
		i +=1
	else
		puts i
		i +=1
	end	
end				
