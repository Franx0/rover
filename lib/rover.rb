class Rover
  attr_reader :position

  def initialize(x, y, dir)
    @position = {x: x, y: y, dir: dir}
  end

  def rotates(index)
    directions = ['N', 'E', 'S', 'W']
    @position[:dir] = directions[index]
    return @position 
  end

  def moves
    direction = @position[:dir]
    case direction
      when 'N'
        @position[:y] += 1 unless @position[:y] == 6
      when 'E'
        @position[:x] += 1 unless @position[:x] == 5
      when 'S'
        @position[:y] -= 1 unless @position[:y] == 0
      when 'W'
        @position[:x] -= 1 unless @position[:x] == 0
    end
    return @position
  end

  def return_position
    return "#{@position[:x]}, #{@position[:y]}, #{@position[:dir]}"
  end
end
