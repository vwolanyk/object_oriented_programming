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
     delivery_total = (start_address - end_address).abs

     # Calculates Earnings Based on Delivery
     if delivery_total < 50
       @earnings = (delivery_total.to_f * 0.25) - 2.00
     else above_quota = (delivery_total.to_f - 50)  * 0.50
       @earnings += above_quota + 12.50
     end

    # Increases Experience based on delivery total
    @experience += delivery_total

  end


end

# Test Case
# ahmed = PaperPerson.new("Ahmed")
# puts ahmed.name
# puts ahmed.quota
# puts ahmed.experience
# puts ahmed.deliver(400,232)
# puts ahmed.experience
# puts ahmed.quota
# puts ahmed.earnings
