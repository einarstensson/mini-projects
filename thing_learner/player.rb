#THING LEARNER - PLAYER

class Player
  def initialize(player_name = "Spock")
    @player_name = player_name
  end

  #Public methods
  def display_intro
  end

  def display_exit
  end

  def display_guess_prompt
  end

  def fetch_guess
  end

  def display_guess_error_message
  end

  def display_guess_result
  end

  #Private methods
  private

end

if __FILE__ == $PROGRAM_NAME
  player = Player.new

  puts "You are in the player class. The player object is called 'player'"
end
