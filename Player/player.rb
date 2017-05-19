class Player

attr_accessor :lives, :gold_coins, :health_points

#   Initializing Method
  def initialize
    @gold_coins     = 0
    @health_points  = 10
    @lives          = 5
  end

#   Level Increase Method
  def level_up
    @lives += 1
  end

#   Collect Treasure Method

  def collect_treasure
    @gold_coins += 1

    if @gold_coins % 10 == 0
      level_up
    end
  end

end
