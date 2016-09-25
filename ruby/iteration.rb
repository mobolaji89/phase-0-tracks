#5.3 repeat - Chipmunks 2016

#create array
fruits = ['apple', 'banana', 'orange', 'pear', 'pineapple']

#iterate through the array using .each
#print each value inside the array

#unmodified array
p fruits

fruits.each do |i|
  puts i + '?'
end

#.each does not modify the original array
p fruits

#iterate through the array using .map
  #bang operater used to change the array with the updated values
#print the updated array

#unmodified array
p fruits

fruits.map! do |i|
  i + '!'
end
#modified array
p fruits
  

#create hash
favorite_fruit = {
  :bob => 'apple',
  :billy => 'banana',
  :tommy => 'orange',
  :sarah => 'pear',
  :susan => 'pineapple'
}

#iterate through the hash
favorite_fruit.each do |key, value|
  puts "#{key.to_s.capitalize} wants the #{value}!"
end


=begin
#original 5.3 below - Coyotes 2016

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
=end