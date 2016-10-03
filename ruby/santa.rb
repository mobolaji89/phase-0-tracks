#6.3 repeat - Chipmunks 2016
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
  def initialize (gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end
    
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(type)
    puts "That was a good #{type}"
    type
  end
    
  #getter methods
  #def ethnicity
    #@ethnicity
  #end
    
  #def age
    #@age
  #end
    
  #release2
  def celebrate_birthday
    @age += 1
  end
    
  def get_mad_at (name)
    @reindeer_ranking.each do |x|
      if name == x
      @reindeer_ranking.delete(x)
      @reindeer_ranking.push(x)
      end
    end
    @reindeer_ranking
  end
    
  #setter method
  #def gender=(new_gender)
    #@gender = new_gender
  #end
    
  #part of release4
  def rand_birthday
    @age = rand(140)
  end

end

#release 0
santa_claus = Santa.new("male", "dutch")
santa_claus.speak
santa_claus.eat_milk_and_cookies("snickerdoodle")

=begin
#release 1
santas = []
genders = ["agender", "female", "male"]
ethnicities = ["dutch", "black", "latino"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "There are now #{santas.length} instances in the array."
  puts santas[i]
  puts santas[i].gender
  puts santas[i].ethnicity
  puts
end
=end

#release 2
p santa_claus.celebrate_birthday
p santa_claus.get_mad_at("Dasher")
p santa_claus.gender = "greek"

#additional tests for refactor
p santa_claus.age
p santa_claus.ethnicity

#release 4
santas = []
genders = ["agender", "female", "male", "transexual", "bigender", "androgynous", "cisgender"]
ethnicities = ["dutch", "black", "latino", "greek", "arabian", "chinese"]
50.times do |i|
  santas << Santa.new(genders.sample, ethnicities.sample)
  puts "There are now #{santas.length} instances in the array."
  puts santas[i]
  puts santas[i].gender
  puts santas[i].ethnicity
  puts santas[i].rand_birthday
  puts #extra line space
end

#Coyotes 2016
=begin
#define class santa
class Santa
	
	attr_reader :ethnicity
	attr_accessor :gender, :age
    #initialize method
    def initialize (gender, ethnicity)
    	@gender = gender
    	@ethnicity = ethnicity
    	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    	@age = 0
    	puts "Initializing Santa instance..."
    end
    
    #speak method
    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end
    
    #eat milk and cookies method
    def eat_milk_and_cookies(type)
    	puts "That was a good #{type}"
    end
    
    #getter methods
    #def ethnicity
    	#@ethnicity
    #end
    
    #def age
    	#@age
    #end
    
    #release2
    def celebrate_birthday
    	@age += 1
    end
    
    def get_mad_at (name)
    	@reindeer_ranking.each do |x|
    		if name == x
    			@reindeer_ranking.delete(x)
    			@reindeer_ranking.push(x)
    		end
    	end
    end
    
    #setter method
    #def gender=(new_gender)
    	#@gender = new_gender
    #end
    
    #part of release4
    def rand_birthday
    	@age = rand(140)
    end

end

#release 0
santa_claus = Santa.new("male", "dutch")
santa_claus.speak
santa_claus.eat_milk_and_cookies("snickerdoodle")

=begin
#release 1
santas = []
genders = ["agender", "female", "male"]
ethnicities = ["dutch", "black", "latino"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "There are now #{santas.length} instances in the array."
  puts santas[i]
  puts santas[i].gender
  puts santas[i].ethnicity
  puts
end
=end
=begin
#release 2
p santa_claus.celebrate_birthday
p santa_claus.get_mad_at("Dasher")
p santa_claus.gender = "greek"

#additional tests for refactor
p santa_claus.age
p santa_claus.ethnicity

#release 4
santas = []
genders = ["agender", "female", "male"]
ethnicities = ["dutch", "black", "latino"]
5.times do |i|
  santas << Santa.new(genders.sample, ethnicities.sample)
  puts "There are now #{santas.length} instances in the array."
  puts santas[i]
  puts santas[i].gender
  puts santas[i].ethnicity
  puts santas[i].rand_birthday
  puts
end
=end