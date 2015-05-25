# Yay shark cage diving! First, we will define a Fish class.

class Fish
  
  def initialize(color, name, speed)
  	@color = color
  	@name = name
  	@speed = speed
  	@food = []
    
  end

  def get_speed
	if(@speed > 20)
		return "This fish swims super fast!"
	else 
		return "This fish is kinda slow."		
	end
end
end



class Shark < Fish
  
  def eat(fish)
  	if(fish.class == Array)
      fish.each do |indv|
        @food << indv
      end
    else  
        @food << fish
    end  
      
  end
  
  def binge_eat(lots_of_food)
  	self.eat(lots_of_food)	
  end
  def what_i_ate
    puts "I've eaten #{@food}!"
  end
end

nemo = Fish.new("orange", "Nemo", 10)
nemo.get_speed

dory = Fish.new("blue", "Dory", 5)

hubert = Fish.new("green", "Hubert", 50)
kanye = Fish.new("black", "Yeezy", 21)

bruce = Shark.new("gray", "Bruce", 40)
bruce.binge_eat([nemo, dory, kanye])

bruce.what_i_ate
# STEP 7: Let's instantiate some fish!!! Create an instance of fish in the variable "nemo", who is orange, 
# named Nemo, and swims 10 km/hr. Call "get_speed" on your new instance and puts the return value.
# STEP 8: MORE FISH! Create 2 more instances of different types of fish, and save them to 
# variables. You decide what you want to call them!

# STEP 9: Uh oh. There's a shark in these waters. Bruce stopped being vegetarian, and now says
# "Fish are food, not friends". Yikes. Initialize an instance of Shark called Bruce who is gray
# and can swim 40 km/hr. Save it to a variable called bruce.

# STEP 10: BRUCE IS HUNGRY. Call "binge_eat" on bruce. Create an array of the Fish instances you 
# just created, and use that as the method arguments.

# STEP 11: Bruce is happy. Call what_i_ate to see what he ate.

