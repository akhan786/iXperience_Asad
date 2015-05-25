Q1
def my_name is the method declaration line
"Zoo lander" is the code in the method
end terminates the method

Q2
8

Q3
def silly_check(number)
	if(number < 5)
		return "The number is less than 5"
	else
	 	return "The number is greater than or equal to 5"
	 end
end

Q4
def funify(array)
	array << "fun"
end	

Q5
def more_fun(array)
	array.delete(array.first)
	newarray = ["FUN FUN"]

	newarray + array
end

Q6
class Dog
	def initialize(name)
	@name = name
end

def bark
	return "Ruff ruff"
end
end

shaggy = Dog.new("Shaggy")
shaggy.bark

Q7
undefined method

Q8
def age_in_year
	age = @age_in_days / 365 #if what you're asking for is 
end							 #how many years in a Fixnum 
							 #the insect has been alive
							 
Q9-Q10 #decided to use attribute accessor from the start
class Person
	def initialize(age)
		@age = age
	end
	
	attr_accessor :age
end	
billy = Person.new(10)
billy.age
=>10
billy.age = 12
billy.age
=>12




