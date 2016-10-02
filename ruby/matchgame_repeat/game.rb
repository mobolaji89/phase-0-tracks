#create a new class called Game
  #define initialize method
    #pass in a word as an argument in the initialize method
    #create appropriate data structure - hash
    #create an empty string to eventually update with matching number of underscores
  #define a method that gets user input and stores a string into a hash as a key
    #default value will be updated empty string changed to appropriate number of underscores
      #I can iterate through each character of the input word, and insert an underscore every index so string can match length of word.
    #return updated hash instance variable
  #define a method that updates the value of the string key inside the hash
    #pass in letter as argument 
    #iterate through each index of the word
      #IF letter passed in equals one of the index values of the word
        #update hash value with character at same index
    #return updated hash instance variable
  #define a method that checks if a word was already inputted by the user
    #pass in a letter and an array as arguments
    #the array will be in the driver code, and will keep track of all of the inputted letters by the user. I will push each letter to the array after the user enters it.
    #in the method I will iterate through the array
      #IF the letter passed in equals one of the letters in the array
        #add 1 turn to guess count to reset, because repeated guesses do not count
      #let the user know that they have already enterned that guess letter
    #return guess count
  #define a method that prints update value in the hash
    #make this user-friendly, so user won't see entire hash
  #within driver code call methods in appropriate order
    #get user input and pass word as an argument for an attribute
    #create a new instance(object) of game class
    #create an empty array data structure to keep track of guess letters
    #incorporate a loop so that user can make multiple guesses
      #IF guess count is equal to 0
        #break loop and print game over message
      #ELSIF
        #the updated value is equal to the key, then break loop and print win message
      #ELSE
        #run program in order


class Game
  attr_reader :word, :str
  attr_accessor :guess_max

  def initialize(word)
    @word = word
    @game_hash = Hash.new
    @str = String.new
    @guess_max = word.length + 3
  end
  
  def get_word
    @word.each_char do |i|
      @str << '_'
    end
    @game_hash[@word] = @str
    @game_hash
  end
  
  def check_guess(char, arr)
    arr.each do |i|
      if char == i
        @guess_max += 1
        puts "You have already chosen '#{char}' as a guess! Try again."
        break
      end
    end
    @guess_max
  end
  
  def update_val(char)
    index = 0
    while index < @word.length  do
      if @word[index] == char
        @str[index] = char
      end
      index += 1
    end
    @game_hash[@word] = @str
    @game_hash
  end
  
  def print_update
    @game_hash.each_value do |value|
      puts "#{value}"
    end
  end
end

#get user input
puts "Please, enter a word:"
guess_word = gets.chomp

game = Game.new(guess_word)
game.get_word
guess_array = Array.new

loop do
  if game.guess_max == 0
    puts "Game Over! You Lose!"
    break
  elsif game.str == game.word
    puts "You Win! The answer is '#{game.word}'!"
    break
  else
    puts "Please, enter your guess:"
    guess_letter = gets.chomp
    game.check_guess(guess_letter, guess_array)
    guess_array.push(guess_letter)
  
    game.update_val(guess_letter)
    game.print_update

    game.guess_max -= 1
    puts "You have #{game.guess_max} guesses left"
    puts #additional spacing
  end
end