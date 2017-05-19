# Creat Class Bank Account

class BankAccount

# Read and Writable balance and interest rate
  attr_accessor :balance, :interest_rate

# Initialize method for class with default variable values
  def initialize
    @balance = 0.00
    @interest_rate = 0.04
  end

# Method to Deposit $$
  def deposit(amount)
    @balance += amount
  end

# Method to Withdraw $$
  def withdraw(amount)
    @balance -= amount
  end

# Method to Apply Interest to Current Balance
  def gain_interest
    @balance += @balance * @interest_rate
  end

end
