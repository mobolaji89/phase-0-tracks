#create class called GuessGame
#define initialize method with appropriate instance variables. 
	#create a new word array to get user input
	#create a new hash to store keys of the word from user input
#create a method for getting user_1 input of word, and store in the new array (split by letters)
	#assign each letter as a key in a hash, and set default value of each key as an underscore "_"
#outside of class create a loop to get user input for a letter
	#set loop exit to false
	#until loop is true then program will exit
	#once user has solved the problem, or ran out of available turns then set exit to true
#create a class method that updates value of hash key, if they user_2's guess is equal to a key value of the hash
#create a class method that prints current feedback (prints updated values of hash on screen)
#when user types repeated guesses, reset guess count to appropriate turn
#class create a method that check to see if the user has won
	#iterate through our original word hash (because of word length)
	#check to see if values in word hash are still underscores
	#IF any value is an underscore within the updated hash, then game is not over and substract a turn from maximum guesses
	#IF there are no undescores left than exit equals true
		#print win message
#if user runs out of allowed turns (maximum guess equals 0) then print game over


class GuessGame
  attr_reader :answer, :is_over, :repeat_array
  attr_accessor :guess_max
  def initialize
  	@word = Array.new
  	@word_hash = Hash.new
  	@repeat_array = Array.new
  	@answer
  	@guess_max
  	@is_over = false
  end
  
  def get_word
  	@answer = gets.chomp.to_s.downcase
  	@word = @answer.split(//)
  	@word_hash = Hash[@word.collect { |char| [char, "_"] } ]
  	return @answer, @word_hash
  end
  
  def update_val(char)
  	@word_hash.each_key do |key|
      @word_hash[key] = char if key == char
    end
    puts #additional line space
  end
  
  def print_feedback
  	@word.each do |key|
      print " #{@word_hash[key]} "
    end
    puts
  end
  
  def repeat_count(char)
  	if @repeat_array.include?(char)
  		@repeat_array
  		@guess_max += 1
  	else
	  @repeat_array.push(char)
    end
  end

  def win_check
  	@word.each do |key| 
  	  if @word_hash[key] == "_"
  	  	return "You have #{@guess_max -= 1} turns left"
  	  end
  	end
  	  @is_over = true
  	  puts #additional line space
  	  #implicit return
  	  "You Won! '#{@answer}' was the correct answer!"
  end
  
end

puts "Welcome to the word guess game!"
puts #additional line space
game = GuessGame.new

puts "Please, enter a word!"
game.get_word
game.guess_max = game.answer.length + 3

until game.is_over == true || game.guess_max == 0 do
  puts #additional line space
  puts "Enter a letter for your guess:"
  guess = gets.chomp.to_s.downcase
  game.update_val(guess)
  game.print_feedback
  game.repeat_count(guess)
  puts game.win_check
end

#extra puts is for additional line space
if game.guess_max == 0 then puts puts "Game Over!" end