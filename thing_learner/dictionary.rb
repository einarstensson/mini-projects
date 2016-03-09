#THING LEARNER - DICTIONARY

require 'yaml'
require 'pry'

class Dictionary
  attr_accessor :dictionary

  def initialize(sorting_mode = :random)
    @sorting_mode = sorting_mode
    @corpus = get_dictionary
  end

  #Public methods
  def check_guess
  end

  def save_progress
  end

  #Private methods
  private
  def get_dictionary
    @dictionary = YAML.load_file('dictionary_captains.yml')
  end

end

if __FILE__ == $PROGRAM_NAME
  dictionary = Dictionary.new

  puts "You are in the dictionary class. The dictionary object is called 'dictionary'"

  binding.pry
end
