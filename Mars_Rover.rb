class Rover
  attr_accessor :xcoord, :ycoord, :direction

  def initialize(xcoord, ycoord, direction)
    @xcoord = xcoord
    @ycoord = ycoord
    @direction = direction
  end


  def move
    if @direction == "N"
      @ycoord += 1
    elsif @direction == "S"
      @ycoord -= 1
    elsif @direction == "E"
      @xcoord += 1
    elsif @direction == "S"
      @ycoord -= 1
    elsif @direction == "W"
      @xcoord -= 1
    end
  end


  def turn(angle)
    if angle == "L" && @direction == "N"
      @direction = "W"
    elsif angle == "L" && @direction == "W"
       @direction = "S"
    elsif angle == "L" && @direction == "S"
       @direction = "E"
    elsif angle == "L" && @direction == "E"
      @direction = "N"
    end




    if angle == "R" && @direction == "N"
      @direction = "E"
    elsif angle == "R" && @direction == "E"
      @direction = "S"
    elsif angle == "R" && @direction == "S"
      @direction = "W"
    elsif angle == "R" && @direction == "W"
      @direction = "N"
    end


  end

  def current_position
    puts "Current position is #{@xcoord}, #{@ycoord} facing the direction #{@direction} "
  end
end

rover = Rover.new(5,2,"N")
rover.move
rover.turn("L")
rover.current_position
