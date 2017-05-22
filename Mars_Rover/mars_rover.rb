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


    # Check to see if Valid Input
    instructions_list.each do |instruction|
       unless (instruction == "M") || (instruction == "L") || (instruction == "R")
         puts "Invalid Entry"
         return "Invalid Entry"
       end
      end

    # Evaluate Input Deploy Methods
    instructions_list.each do |move_value|
      if move_value == "M"
          move
      else puts "turn #{move_value}"
          end
        end
    end

end
come_over = Rover.new(3, 7, "N")
come_over.position

come_over.read_instructions("mmlrrmm")

come_over.position
