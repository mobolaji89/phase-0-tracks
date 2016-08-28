puts "WARNING: This program will only encrypt or decrypt LOWERCASE passwords ONLY. Multiple words may be decrypted or encrypted if entered. Uppercase letters or special characters were not intended to be changed during the design of this program. Any spaces between multiple words entered will be represented by an empty space in the result.

" #It's true :) #

end_program = false
until end_program  == true do #this loop is used to restart the program if the user does not type "D" or "E" when the program starts. (Example: User types 'F' .")

	puts "1. Would you like to decrypt or encrypt your password (type: 'D' or 'E')?"
	answer = gets.chomp.to_s

	puts "2. Please, enter a password (lower-case only, please):"
	word = gets.chomp.to_s

	def encrypt (word)
		index = 0 
		while index < word.length
			if
				word[index] == "z"
				word[index] = "a"
			elsif 
				word[index] == " "
				word[index] = " "
			else
				word[index] = word[index].next
			end
			index += 1 #(index = index + 1) increment to stop infinite loop
		end
	  # puts word # to print the new encrypted string
		return word # to return the new value of the string, so we can decrypt the encrypted string.
	end

	def decrypt (word)
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		index = 0 
		while index < word.length
			if word[index] == "a"
				word[index] = "z"
			else
				for i in 0..25
					if 
						alphabet[i] == word[index]
						word[index] = alphabet[i-1]
					end
				end
			end
		index += 1
		end
	  # puts word # to print the new decrypted string
		return word # to return the new value of the string, if we want to encrypt the decrypted string.
	end

##decrypt(encrypt(word)) - Release 4##

##Release 5 below##

	if answer == "D" || answer == "d" #Ruby seems to be case sensitive.
		decrypt(word)
		puts "Your new decrypted password is: '#{word}'."
		end_program = true
	elsif
		answer == "E" || answer == "e" #Ruby seems to be case sensitive.
		encrypt(word)
		puts"Your new encrypted password is: '#{word}'."
		end_program = true
	else
		puts "Wrong input value for question #1. You need to type 'E' or 'D'. Please, try again."
	end

end