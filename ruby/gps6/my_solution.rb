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


STATE_DATA.each_key do |key|
state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
state.virus_effects
end

#=======================================================================
# Reflection Section