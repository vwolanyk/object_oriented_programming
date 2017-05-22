class PaperPerson

# Attributes and read/write settings

attr_accessor :name, :experience
attr_reader :earnings

# Initialize new PaperPerson

  def initialize(name)
    @name       = name
    @experience = 0
    @quota      = 50
  end

# Quota Metod - Determines current quota
  def quota
    @quota = (@experience / 2) + 50
  end

end

# Test Case
# ahmed = PaperPerson.new("Ahmed")
# puts ahmed.name
# puts ahmed.experience
# puts ahmed.quota
