#5.3 repeat - Chipmunks 2016

#get user input, convert to string, and split full name into two strings
#split full name into two separate strings. Swap both first and last names in array using indexes. Update original array with new
#use .join to return a string with the space, and then convert each character including the space back into an array by splitting. Update original array with new
#create a next vowel method that takes an array as an argument with split letters, iterates through each letter, and changes the vowel to the next in the alphabet
#create encrypt function for consonants
  #capitalize first and last name within encrypt method
#create empty data structure containing two arrays
#create user interface
  #create boolean variable for loop exit and set equal to false
  #utilize a loop for entering multiple names
  #IF user types 'quit' then set exit to true
  #ELSE push original name entry into original_name array within data structure
#push encrypted spy name entry into spy_name array within data structure
#when loop starts over prompt user to enter an additional name
  #program will continue until user quits
#after user quits iterate through the data structure using a loop, and print data for user
#iterate through the data structure using a loop, and print data for user
  #thank user
#EXTRA - create a warning prompt for the user and explain program


puts "WARNING: This program was created to take a real name and change it into a spy name by doing the following:" 
puts "1. Swapping the first and last name."
puts "2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'."
puts "This program was designed with the intention of changing TWO WORD name entries only."
puts #extra space for clarity

list_names = {}

exit = false
	
loop do
  puts "Please, enter your full name (Type, 'quit' when done):"
  full_name = gets.chomp.to_s
  puts #extra space for clarity
	if full_name == "quit"
	  exit = true
	else
	  list_names[full_name] = nil
	  #debug to see if full_name was stored in hash
		#p list_names
	  name_array = full_name.downcase.split
	  swap_array = (name_array[0], name_array[1] = name_array[1], name_array[0])
	  swap_array = swap_array.join(' ').split(//)
	  #debug to see if swap_array is updated
		#p swap_array
	  def next_vowel(swap_array)
		swap_array.map! do |x|
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
	    end
		return swap_array
	  end
	  #debug next_vowel method
		#p next_vowel(swap_array)
	  def encrypt (swap_array)
		swap_array.map! do |x|
		  if x == "a" || x == "e" || x == "i" || x == "o" || x == "u"
		    x
		  elsif x =="d"
		    x = "f"
		  elsif x == "z"
		    x = "b"
		  elsif x == "h"
		    x = "j"
		  elsif x == "n"
		    x = "p"
		  elsif x == "t"
		    x = "v"
	      elsif x == " "
		    x = " "
		  else
		    x = x.next
		  end	
		end
		swap_array = swap_array.join.split
		swap_array[0].capitalize!
		swap_array[1].capitalize!
		swap_array.join(" ")
	  end
	  #encrypt function test code
		#p encrypt(next_vowel(swap_array))
	list_names[full_name] = encrypt(next_vowel(swap_array))
	#debug to see if encrypted swap_array was set to updated value in hash
	  #p list_names
	puts "ENTER AN ADDITIONAL NAME BELOW:"
	end
  break if exit == true #end loop
end

#debug to see if all key value pairs were stored after user quits and loop ends
  #p list_names

puts "Here are your spy aliases:"
list_names.each do |key, value|
  puts "#{key} is also known as #{value}."
end
puts #extra space for clarity
puts "THANK YOU!"

#original below - Coyotes 2016
=begin
### Pseudocode is written numerically for organization (steps: 1-17) ###

#17) Extra: Warning message for user
puts "WARNING: This program was created to take a real name and change it into a spy name by doing the following:" 
puts "1. Swapping the first and last name."
puts "2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'."
puts "This program was designed with the intention of changing TWO WORD name entries only."
#Create extra space for clarity
puts

#7) User interface: create boolean variable for loop exit
exit = false

#9) Create empty data structure containing two arrays
		list_names = {
			original_name: [],
			spy_name: []
		}

#8) Utilize a loop for entering multiple names		
until exit == true do

		#1) Get user input, convert to string, and split full name into two strings
		puts "Please, enter your full name (Type, 'quit' when done):"
		full_name = gets.chomp.to_s
		#Create extra space for clarity
		puts
		
	if full_name == "quit" || full_name == "Quit"
		exit = true
		
	else
		#10) Push original name entry into original_name array within data structure
		list_names[:original_name].push(full_name)
		
		#11) Debug to see if full_name was push to original_name array
		#p list_names[:original_name]
		
		#2) Split full name into two separate strings. Swap both first and last names in array using indexes. Update original array with new
		name_array = full_name.split
		
		swap_array = (name_array[0], name_array[1] = name_array[1], name_array[0])
		
		#3) Use .join to return a string with the space, and then convert each character including the space back into an array by splitting. Update original array with new
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
		
		#encrypt(next_vowel(swap_array))
	
	#12) Push encrypted spy name entry into spy_name array within data structure
	list_names[:spy_name].push(encrypt(next_vowel(swap_array)))
	
	#13) Debug to see if encrypted swap_array was pushed to spy_name array
	#p list_names[:spy_name]
	
	#14) Prompt user to enter an additional name
	puts "ENTER AN ADDITIONAL NAME BELOW."
	
	end
	
end

#15) Debug to see if stored original and encryted values were pushed after user quits and loop ends 
#p list_names[:original_name]
#p list_names[:spy_name]

#16) Iterate through the data structure using a loop, and print data for user
puts "Here are your spy aliases:"

index = 0
while index < list_names[:original_name].length
	puts "#{list_names[:original_name][index]} is also known as #{list_names[:spy_name][index]}."
	index +=1
end

#Create extra space for clarity
puts
puts "THANK YOU!"
=end