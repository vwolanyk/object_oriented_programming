class BankAccount

  attr_accessor :balance, :interest_rate

  def initialize
    @balance = 0.00
    @interest_rate = 0.04
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_inerest
    @balance += @balance * @interest_rate
  end

end
