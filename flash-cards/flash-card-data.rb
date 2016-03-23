
require 'json'

file = File.read('flash-card-data.json')

flash_card_data = JSON.parse(file)

flash_card_data.each do |type, values|
  values.each_with_index do |command, index|
    puts "\n------------ COMMAND: #{type.to_s} ##{index + 1}------------"
    puts "Variables: #{command['variables']}" unless command['variables'].empty?
    puts command['command']
    puts "===>\n #{command['output']}"
  end
end