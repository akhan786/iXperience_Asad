def find_by_name(array, string)
	array.each do |hashes|
		if(hashes[:name] == string)
			return hashes
		end
	end
return nil	
end			
	
def filter_by_name(array, string)
	names = []
	array.each do |hashes|
		if(hashes[:name] == string)
			names << hashes
		end	
	end
names	
end		


def index_of(string, letter)
	array = string.split('')
	i = 0
	index = -1
	array.each do |arr|
		if arr == letter
			puts i
			index = i
		end
		i += 1
	end
index
end

index_of("abcdefghijklmnop", "m")
# => 12
index_of("abcdefghijklmnop", "z")
# => -1

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]
find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}
find_by_name(people, "kitten!")
# => nil
filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
filter_by_name(people, "puppy!!!")
# => []