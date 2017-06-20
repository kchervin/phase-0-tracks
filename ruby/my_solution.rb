# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# provides a path to collect data from another ruby file - connects files within the same directory
#ruby constants : STATE_DATA variable, scope is global, should not be changed, WARNING

require_relative 'state_data'

class VirusPredictor
#initializes upon new instance of class, sets variable for state, pop and pop density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#setting up information for future methods


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

#predicts death rate based on population density in each state
  def predicted_deaths
    # predicted deaths is solely based on population density


    if @population_density >= 200
      x = 0.4
      # number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      x = 0.3
      # number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      # number_of_deaths = (@population * 0.2).floor
      x = 0.2
    elsif @population_density >= 50
      # number_of_deaths = (@population * 0.1).floor
      x = 0.1
    else
      # number_of_deaths = (@population * 0.05).floor
      x = 0.05
    end

    number_of_deaths = (@population * x).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# predicts speed of spread in each state based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed += if @population_density >= 200
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

    puts " and will spread across the state in #{speed} months.\n\n"
#change to speed += if ...
#remove "speed += from each individual line "
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section