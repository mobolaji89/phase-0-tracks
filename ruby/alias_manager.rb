#7 User Interface - create boolean, and utilize a loop
exit = false
until exit == true do

		#1) Get user input, convert to string, and split full name into two strings
		puts "Please, enter your full name (Type, 'quit' when done):"
		full_name = gets.chomp.to_s
	if full_name == "quit" || full_name == "Quit"
		puts "THANK YOU!"
		exit = true
	else
		name_array = full_name.split
		
		#2) swap both names in array using indexes. Update original array with new.
		swap_array = (name_array[0], name_array[1] = name_array[1], name_array[0])
		
		#3) Use .join to return a string with the space, and then convert each character including the space back into an array by splitting. Update original array with new.
		swap_array = swap_array.join(' ').split(//)
		
		#4)Debug to see if swap_array is updated
		#p swap_array
		
		#Next vowel method
		def next_vowel(swap_array)
				swap_array.map! { |x| x
					if x == "a" || x == "A"
						x = "e"
					elsif x == "e" || x == "E"
						x = "i"
					elsif x == "i" || x == "I"
						x = "o"
					elsif x == "o" || x == "O"
						x = "u"
					elsif x == "u" || x == "U"
						x = "a"
					else
						x
					end
				}
			return swap_array
		end
		
		#5)Debug next_vowel method
		#p next_vowel(swap_array)
		
		#6)Create encrypt function for consonants
		def encrypt (swap_array)
			swap_array.map! { |x| x
			if x == "a" || x == "e" || x == "i" || x == "o" || x == "u"
				x
			elsif
				x =="d" || x == "D"
				x = "f"
			elsif
				x == "z" || x == "Z"
				x = "b"
			elsif
				x == "h" || x == "H"
				x = "j"
			elsif x == "n" || x == "N"
				x = "p"
			elsif x == "t" || x == "T"
				x = "v"
			elsif x == " "
				x = " "
			else
				x = x.next
			end	
			}
		
		#7)	Capitalize first and last name 
			swap_array = swap_array.join.split
			swap_array[0].capitalize!
			swap_array[1].capitalize!
			swap_array.join(" ")
		end
		
		p encrypt(next_vowel(swap_array))
	
	#Prompt user to enter an additional name
	puts "ENTER AN ADDITIONAL NAME BELOW."
		
	end
	
end