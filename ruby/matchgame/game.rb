#create class called GuessGame
#define initialize method with specific attributes
#create a method for getting user 1 input of word, and store in a array (split by letters)
#assign each letter as a key in a hash, and set default value as an underscore "_"
#create a loop to get user input for a letter
#within class create a method that updates value of hash key, if they match
#within class create a method that prints current feedback
#within class create a method that check to see if there are any more underscores as keys
#within class do a counter method for number of allowed guesses
#if user picks correct letters within the amount of turns then stop loop
#print win message if user wins
#if user runs out of allowed turns then print game over



class GuessGame
  attr_accessor :word, :answer, :guess_count, :is_over
  def initialize
  	@word = Array.new
  	@word_hash = Hash.new
  	@answer = nil
  	@guess_max = nil
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
      if key == char
    	@word_hash[key] = char
      else
      	@word_hash[key] = @word_hash[key]
      end
    end
    @word_hash
    puts
  end
  
  def print_feedback
  	@word.each do |x|
  	  key = x
      if x == @word_hash[key]
      print " #{x} "
      else
      print " #{@word_hash[key]} "
      end
    end
    puts
  end
  
  def win_check
  	@word_hash.each_value do |value|
  	  if value == "_"
        @is_over = false
      else
      	@is_over = true
      end
    end
    
  end
  
  def guess_max
  	@guess_max = @answer.length + 3
  	@guess_max = @guess_max - 1
  	@guess_max
  end
  
  def check_guess(num)
  	if num == 0
  	  puts "Game Over!"
  	  @is_over = true
  	else
  	  puts "You have #{num} guesses left."
  	  puts
    end
    @guess_max
  end
end

puts "Welcome to the word guess game!"
puts
game = GuessGame.new

puts "Please, enter a word!"
game.get_word

until game.is_over == true do
  puts "Enter a letter for your guess:"
  guess = gets.chomp.to_s
  game.update_val(guess)
  game.print_feedback
  game.win_check
  game.guess_max
  game.check_guess(game.guess_max)
end