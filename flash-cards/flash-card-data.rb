=begin
This is a set of functions that will retrieve data from my flash card database. 
The idea is to expand this to a program that can be run from the terminal. I'd like 
to expand this later, probably using meta-programming.
=end

require 'json'

#Fetch flash card data
file = File.read('flash-card-data.json')
flash_card_data = JSON.parse(file)

#-------------- OUTPUT ENTIRE DATABASE --------------
def all(flash_card_data)
  flash_card_data.each do |type, values|

    values.each_with_index do |command, index|
      puts "\n------------ COMMAND: #{type.to_s} ##{index + 1}------------"
      puts "Variables: #{command['variables']}" unless command['variables'].empty?
      puts command['command']
      puts "===>\n #{command['output']}"
    end

  end
end

#-------------- OUTPUT ALL COMMANDS OF A CERTAIN DATA TYPE --------------
def type(flash_card_data, data_type)
  puts "\n------------ COMMAND: #{data_type} ------------\n"

  flash_card_data[data_type].each do |command|
      puts "Variables: #{command['variables']}" unless command['variables'].empty?
      puts command['command']
      puts "===>\n #{command['output']}\n\n"    
  end

end

#TEST RUNS
#all(flash_card_data)
type(flash_card_data, "string")