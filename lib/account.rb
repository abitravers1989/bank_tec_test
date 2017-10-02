# this represents a users/ clinets account
class Account
  attr_accessor :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(n)
    @balance += n
  end

  def withdraw(n)
    @balance -= n
  end
end
