=begin
This is a set of functions that will retrieve data from my flash card database. 
The idea is to expand this to a program that can be run from the terminal. I'd like 
to expand this later, probably using meta-programming.
=end

require 'pry'
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
    print_command(command)
  end

end

#-------------- OUTPUT SPECIFIC COMMAND --------------
def command(flash_card_data, command_name)
  search_result = []

  flash_card_data.each do |data_type, commands|
    result = commands.select{ |command| command['name'] == command_name }
    search_result << result unless result == []
  end

  search_result.flatten.each do |command|
    print_command(command)
  end
end

#-------------- HELPER METHODS --------------
def print_command(command)
  puts
  puts "Variables: #{command['variables']}" unless command['variables'].empty?
  puts command['command']
  puts "===>\n #{command['output']}\n\n"
end

#TEST RUNS
#all(flash_card_data)
#type(flash_card_data, "string")
#command(flash_card_data, '?')



