# this represents a users/ clinets account
class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(n)
    @balance += n
  end
end
