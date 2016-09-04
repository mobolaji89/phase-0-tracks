#1) Get user input, convert to string, and split full name into two strings
puts "Please, enter your full name"
full_name = gets.chomp.to_s
name_array = full_name.split

#2) swap both names in array using indexes
swap_array = (name_array[0], name_array[1] = name_array[1], name_array[0])