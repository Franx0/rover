class CommandLine
  attr_reader :rover, :commands
  
  def initialize(x, y, dir = 'N', commands)
    @x = x
    @y = y
    @dir = dir
    @commands = commands
  end

  def execute
    @rover = Rover.new(@x, @y, @dir)
    parse_command
    return @rover.return_position
  end

  def parse_command    
    @commands.chars.each do |command|
      directions = ['N', 'E', 'S', 'W', 'N']
      index = directions.index(@rover.position[:dir])
      
      case command
        when 'L'
          index -= 1
          @rover.rotates(index%directions.count)
        when 'R'
          index += 1 
          @rover.rotates(index%directions.count)
        when 'M'
          @rover.moves
      end
    end
  end
end
