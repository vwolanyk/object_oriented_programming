class PaperPerson

# Attributes and read/write settings

attr_accessor :name, :experience
attr_reader :earnings


# Initialize new PaperPerson

  def initialize(name)
    @name       = name
    @experience = 0
    @quota      = 50
    @earnings   = 0.00
  end

# Quota Metod - Determines current quota
  def quota
    @quota = (@experience / 2) + 50
  end


  def deliver(start_address, end_address)
    #Calculates Number of Houses Delivered regardless of Start and End Value
     delivery_total = (start_address - end_address).abs + 1

     # Increases Experience based on delivery total
     @experience += delivery_total

     # Calculates Earnings Based on Delivery
     if delivery_total < @quota
       @earnings = (delivery_total * 0.25) - 2.00
     else above_quota = (delivery_total - @quota)  * 0.50
       @earnings += above_quota + (@quota * 0.25)
     end

  end

# Display PaperPerson's progress

  def report
    puts "Daily Report:"
    puts "Name: #{@name.capitalize}"
    puts "Experience: #{@experience} papers delivered"
    puts "Total Earnings $#{@earnings}"
  end

end

# Test Case
ahmed = PaperPerson.new("Ahmed")
puts ahmed.name
puts ahmed.quota
puts ahmed.experience
puts ahmed.deliver(232,400)
puts ahmed.experience
puts ahmed.quota
puts ahmed.earnings
ahmed.report

# QUESTIONS
# 1 -  Deliver Method is very Busy, does too many things? but exercise asked for things
#  2 - How to best use currency in Ruby?
