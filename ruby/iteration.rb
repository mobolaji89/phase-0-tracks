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

#new array
numbers = [1,2,3,4,5,6,7,8,9,10]

#delete numbers in array less than 5, and print
p numbers.delete_if {|i| i < 5}

#keep numbers in an array less than 5, and print
p numbers.keep_if {|i| i < 5}

#filter even numbers, and print
p numbers.select {|num| num.even?}

#remove(drop) items until false
p numbers.drop_while  {|i| i < 5}

#new hash
num_hash = {
   :a => 1,
   :b => 2,
   :c => 3,
   :d => 4,
   :e => 5
}

#delete key value pair if value in hash less than 3
p num_hash.delete_if {|key, value| value < 3}

#keep key value pairs that are less than 3}
p num_hash.keep_if {|key, value| value < 3}

#filter key value pairs with even values
p num_hash.select {|key, value|  value.even?}

#no drop method for hash




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