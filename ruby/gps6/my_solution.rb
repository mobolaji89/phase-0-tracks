#Chipmunks 2016
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#it accesses different variable type within another file in the same local directory.

require_relative 'state_data'

class VirusPredictor
  #giving our instances attributes that will be passed in when created
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #accessing the private methods within the class, and calling them together within a method
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
  #calculates the number of predicted deaths per state based on a condition
  def predicted_deaths
    # predicted deaths is solely based on population density
      #case when population
      
    #if @population_density >= 200
      #number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
      #number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
      #number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
      #number_of_deaths = (@population * 0.1).floor
    #else
      #number_of_deaths = (@population * 0.05).floor
    #end
    
    #refactor
    case @population_density    
    when (@population_density >= 200)
      rate = 0.4
    when (150..199)
      rate = 0.3
    when (100..149)
      rate = 0.2
    when (50..99)
      rate = 0.1
    else
      rate = 0.05
    end
    
    number_of_deaths = (@population * rate).floor  
  end
  
  #calculates speed virus will affect the entire state within a period of time
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    #if @population_density >= 200
      #speed += 0.5
    #elsif @population_density >= 150
      #speed += 1
    #elsif @population_density >= 100
      #speed += 1.5
    #elsif @population_density >= 50
      #speed += 2
    #else
      #speed += 2.5
    #end
    
    #refactor
    case @population_density
    when (@population_density >= 200)
      0.5
    when (150..199)
      1
    when (100..149)
      1.5
    when (50..99)
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#refactor
STATE_DATA.each { |state, value| VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects }



=begin 
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section

#Difference between to different hash syntaxes
  #"Hashy Hash structure (nested hashes)"
   #Global Hash variable is a constant.
   #state is the main key key, and is a string
   #within nested hashes population_density and populattion are keys, and are symbols.
#Different between require relative and require
  #Require relative accesses different variable type within another file in the same local directory. Require is usually a file relative to the current directory, where require could be within a same directory, but different location.
#Different ways to iterate through hash
  #.each, .each_key, .each_value, 
#When refactoring virus_effects, what stood out to you about the variables, if anything?
  #the variables were very repetitive, so I was able to make my code more DRY.
#What concept did you most solidify in this challenge?
  #Definitely the refactoring. There are so many different ways to refactor, and it will just take time for me to continue to improve.

































































































#Coyotes 2016
=begin
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

## accesses relevent file within same directory

class VirusPredictor

  ## initialize let's us know when a new instance starts. 
  ##The initialize method takes attributes that give characteristics to our class.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @speed = 0
    @number_of_deaths
  end


  ## gives us access to private methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  ## keyword for hiding or protecting methods below
  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    @number_of_deaths = if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

  end

  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    @speed = if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{@speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

=begin
STATE_DATA.each_key do |key|
state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
state.virus_effects
end

#=======================================================================
# Reflection Section
=end