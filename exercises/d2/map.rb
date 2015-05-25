engine = ["Google", "Bing", "Ask Jeeves"]
engine.map do |element|
	if(element == "Google")
		element = "OK"
	elsif element == "Bing"
		element = "Bad!"
	else
		element = "What is that?"
	end
end



