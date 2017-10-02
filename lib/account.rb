require 'Date'
# this represents a users/ clinets account
class Account
  attr_accessor :balance, :statement, :credit

  def initialize
    @balance = 0
    @statement = []
    @credit = credit
  end

  def deposit(n)
    @balance += n
    @credit = n
  end

  def deposittransaction
    date = Datenow.new.createdate
    @statement << { credit: @credit, balance: @balance, date: date }
  end


  def depositprocess(n)
    account = Account.new
    account.deposit(n)
    account.deposittransaction
  end

  def withdraw(n)
    @balance -= n
    @debit = n
  end

  def withdrawaltransaction
    date = Datenow.new.createdate
    @statement << { debit: @debit, balance: @balance, date: date }
  end

  def withdrawalprocess(n)
    account = Account.new
    account.withdraw(n)
    account.withdrawaltransaction
  end

  end

  ac = Account.new
  ac.deposit(20)
  ac.statement
  ac.printstatmentheader
  ac.display
