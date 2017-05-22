# MARS ROVER ASSIGNMENT

# Class Rover
class Rover

  # Init Method takes x,y and direction coordinates
  def initialize(x_coord,y_coord,direction)
    @x_coord    = x_coord
    @y_coord    = y_coord
    @direction  = direction
  end

  #Instruction Method
  def read_instructions(instruction)
    # String to Array of Instructions
    # Convert to Upcase Format for reading consistency
    instructions_list = instruction.upcase!.split(//)


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
          puts "move"
      else puts "turn #{move_value}"
          end
        end
    end

end
come_over = Rover.new(3, 7, "N")


come_over.read_instructions("mmlrrmm")
