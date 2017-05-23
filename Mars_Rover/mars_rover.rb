# MARS ROVER ASSIGNMENT

# Class Rover
class Rover

  attr_reader :x_coord, :y_coord, :direction

  # Init Method takes x,y and direction coordinates
  def initialize(x_coord,y_coord,direction)
    @x_coord    = x_coord
    @y_coord    = y_coord
    @direction  = direction.upcase
  end

  def position
    puts "X: #{@x_coord}"
    puts "Y: #{@y_coord}"
    puts "Direction: #{@direction}"
  end

  #Instruction Method
  def read_instructions(instruction)
    # String to Array of Instructions
    # Convert to Upcase Format for reading consistency
    instructions_list = instruction.upcase!.split(//)

    # Method to Move Rover
    def move
      case @direction
      when "N"
        @y_coord += 1
      when "S"
        @y_coord -= 1
      when "W"
        @x_coord += 1
      when "E"
        @x_coord -= 1
      end
    end

  # Method to Turn Rover Left or Right
  def turn(l_or_r)
    if  l_or_r == "L"
      case @direction
      when "N"
        @direction = "W"
      when "E"
        @direction = "N"
      when "S"
        @direction = "E"
      when "W"
        @direction = "S"
      end
    else
      case @direction
      when "N"
        @direction = "E"
      when "E"
        @direction = "S"
      when "S"
        @direction = "W"
      when "W"
        @direction = "N"
      end
    end
  end


    # Check to see if Valid Input
    instructions_list.each do |instruction|
       unless (instruction == "M") || (instruction == "L") || (instruction == "R")
         puts "Houston: We have a Problem!"
         puts "Re-Enter Commands"
         return "Invalid Entry"
       end
      end

    # Evaluate Input Deploy Methods
    instructions_list.each do |move_value|
      if move_value == "M"
          move
      else turn(move_value)
          end
        end
    end

end

# TEST CASE
# come_over_red = Rover.new(3, 7, "N")
# come_over_red.position
#
# come_over_red.read_instructions("MmEmlrsmm")
#
# come_over_red.read_instructions("mmlRrMm")
#
# come_over_red.position
