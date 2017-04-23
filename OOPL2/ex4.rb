class BankAccount
  attr_accessor :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def increase_balance
    self.balance += 100
  end
end


zach = BankAccount.new(100)

zach.increase_balance

puts zach.balance
