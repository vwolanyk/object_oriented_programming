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

  #   RESTART Method - When All is lost!

      def restart
        puts "Player Reboot"
        @lives = 5
        @gold_coins = 0
        @health_points = 10
      end


#   Do Battle Method

  def do_battle(damage)

    @health_points -= damage

      if  @health_points < 1
          @lives -= 1
      end
      if @lives == 0
        return restart
      else
          @health_points = 10
      end
    end

end
