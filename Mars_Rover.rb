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


  def turn(new_direction)
    if new_direction == "L"
      if @direction == "N" then @direction = "W" end
      end



    if new_direction == "L"
      if @direction == "W" then @direction = "S" end
      end



    if new_direction == "L"
      if @direction == "S" then @direction = "E" end
      end


    if new_direction == "L"
      if @direction == "E" then @direction = "N" end
      end


    if new_direction == "R"
    if @direction == "N" then @direction = "E" end
      end


    if new_direction == "R"
      if @direction == "E" then @direction = "S" end
      end

    if new_direction == "R"
      if @direction == "S" then @direction = "W" end
      end

    if new_direction == "R"
      if @direction == "W" then @direction = "N" end
      end


  end

  def current_position
    puts "Current position is #{@xcoord}, #{@ycoord} facing the direction #{@direction} "
  end
end

rover = Rover.new(5,2,"N")
rover.move
rover.turn("R")
rover.current_position
