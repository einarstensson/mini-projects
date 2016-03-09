#THING LEARNER
require_relative "dictionary"
require_relative "player"

require 'pry'

class ThingLearner
  attr_reader :dictionary, :player

  def initialize(player = Player.new("Spock"), dictionary = Dictionary.new(:random))
    @player = player
    @dictionary = dictionary
  end

  #Keep prompts in the Player class and test logic in the dictionary class
  def play
    #Display Intro (Player)

    #Game Loop runs until "exit"

    #Display exit prompt (Player)

    #Exit Game
  end

  def play_turn
    #Prompt User for guess (Player)

    #Fetch guess (Player)

    #Check guess (Dictionary)
      #Break if result is "exit"
      #Promt error message if result is non sensical (Player)
        #Re-run loop

    #Save progress (Dictionary)

    #Display guess result (Player)

    #Re-run loop
  end
end

if __FILE__ == $PROGRAM_NAME
  thing_learner_game = ThingLearner.new
  thing_learner_game.play
end
