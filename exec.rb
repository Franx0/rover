require './lib/rover'
require './lib/command_line'

command = CommandLine.new(3, 3, 'E', 'MMRMMRMRRM')
puts command.execute