class Rover

  def initialize(x_coord,y_coord,direction)
    @x_coord    = x_coord
    @y_coord    = y_coord
    @direction  = direction
  end


end

come_over = Rover.new(3, 7, "N")
puts come_over
