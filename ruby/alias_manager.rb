#1) Get user input, convert to string, and split full name into two strings
puts "Please, enter your full name"
full_name = gets.chomp.to_s
name_array = full_name.split

#2) swap both names in array using indexes. Update original array with new.
swap_array = (name_array[0], name_array[1] = name_array[1], name_array[0])

#3) Use .join to return a string with the space, and then convert each character including the space back into an array by splitting. Update original array with new.
swap_array = swap_array.join(' ').split(//)
#4)Debug
p swap_array

#Next vowel method
def next_vowel(swap_array)
		swap_array.map! { |x| x
			if x == "a"
				x = "e"
			elsif x == "e"
				x = "i"
			elsif x == "i"
				x = "o"
			elsif x == "o"
				x = "u"
			elsif x == "u"
				x = "a"
			else
				x
			end
		}
end

#Debug
p next_vowel(swap_array)