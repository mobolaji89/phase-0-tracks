#6.2 repeat - Coyotes 2016
class Puppy
  def initialize
  	puts "Initializing new puppy instance..."
  end 		

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy 
  end
  
  def speak(num)
  	num.times do 
  	  puts "Woof!"
  	  end
    num
  	end
    
  def roll_over 
  	puts "*rolls over*"
  end
  
  def jump(num)
    puts "*jumps #{num} inches from the ground*"
    num
  end
end

puppy = Puppy.new
puppy.fetch('stick')
puppy.speak(3)
puppy.roll_over
puppy.jump(10)


#Coyotes 2016
=begin
class Puppy

  def initialize
  	 puts "initialize new puppy instance!"
  end 		

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy 
  end

  def speak(num)
  	num.times do 
  		puts "Woof!"
  		end 
  	end 

  def roll_over 
  	puts "*Rolls over*"
  end 

  def dog_years(age)
	age = age / 7
	age.to_s
  end 

  def play_dead
  		puts "**Play dead!**"
  end 

end


dog = Puppy.new 
dog.fetch('ball')

woof = Puppy.new 
woof.speak(10)

roll = Puppy.new 
puts roll.roll_over

cal = Puppy.new 
puts cal.dog_years(21)

dead = Puppy.new 
puts dead.play_dead

# Release 2 

class Protein 

	def initialize 
		return "Calculating....calculating...calculating"
	end 

	def nuts(num)
		return "#{num} grams of nuts is a great source of protein!"
	end 

	def lean_meats
		return "Steak is a lean meat that is great for protein!"
	end 
end 

shake = {

protein_array: [],
nut_array: []

}

50.times do 

peanuts = Protein.new 
shake[:nut_array].push(peanuts.nuts(20))

meats = Protein.new 
shake[:protein_array].push(meats.lean_meats)

end 

shake.each do |key, value| 
	puts "#{value}"
end 
=end















































