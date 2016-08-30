def favorite_food
  puts "I like to eat pizza!"
  yield("sushi","potatoes")
  yield(1,2)
end

favorite_food {|food_1, food_2| puts "I also like to eat #{food_1} and #{food_2}!"}

# Release 1 below

operating_systems = ["windows", "osx", "linux", "ubuntu"]

dbc_campuses = {
  california: "San Francisco",
  washington: "Seattle",
  texas: "Austin",
  illinois: "Chicago"
}

p operating_systems
operating_systems.each do |os| 
  puts "An example of an operating system is #{os}!"
end

p dbc_campuses
dbc_campuses.each do |state, city|
  puts "There's a DBC Campus in #{city}, #{state.capitalize}!"
end

p operating_systems
operating_systems.map! do |os|
  puts os
  os.capitalize
end

p operating_systems

# Release 2 below

numbers = [1,2,3,4,5,6,7,8,9,10]
num_hash = {
  "1" => "one",
  "2" => "two",
  "3" => "three",
  "4" => "four",
  "5" => "five"
}

# first example 
even_num = []
p numbers
p even_num
even_num = numbers.select { |num| num.even? }
p even_num

even_hash = {}
p num_hash
p even_hash
even_hash = num_hash.select { |digit, string| digit.to_i.even? }
p even_hash
