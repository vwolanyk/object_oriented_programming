class Player

attr_accessor :lives, :gold_coins, :health_points
# Initializing Method
  def initialize
    @gold_coins     = 0
    @health_points  = 10
    @lives          = 5
  end

#   Level Increase Method
  def level_up
    @lives += 1
  end


end

p1 = Player.new

puts p1.lives

p1.level_up

puts p1.lives
