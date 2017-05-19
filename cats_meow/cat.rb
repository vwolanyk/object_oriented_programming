class Cat

  def initialize(name,preferred_food,meal_time)
    @name             = name
    @preferred_food   = preferred_food
    @meal_time        = meal_time
  end

# 2 Instances of Cat
fido = Cat.new("fido","Alpo", 5)
yarnball = Cat.new("yarnball", "caviar", 3)

# Method to Display a cat's meal time

  def eats_at
    if @meal_time == 12
      "12 PM"
    elsif @meal_time == 0
      "12 AM"
    elsif @meal_time > 12
      "#{@meal_time - 12} PM"
    else @meal_time < 12
      "#{@meal_time} AM"
    end

  end


end
