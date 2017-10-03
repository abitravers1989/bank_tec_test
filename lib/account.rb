require 'datenow'
require 'statement_display'
# this represents a users/ clinets account
class Account
  attr_accessor :balance, :transaction, :credit, :debit

  def initialize
    @balance = 0
    @transaction = []
    @credit = credit
    @debit = debit
  end

  def deposit(n)
    @balance += n
    @credit = n
  end

  def deposittransaction
    date = Datenow.new.createdate
    @transaction << { credit: @credit, balance: @balance, date: date }
  end

  def withdraw(n)
    @balance -= n
    @debit = n
  end

  def withdrawaltransaction
    date = Datenow.new.createdate
    @transaction << { debit: @debit, balance: @balance, date: date }
  end

  def printstatement
    accountstatement = Statement_Display.new(@transaction)
    accountstatement.printstatmentheader
    accountstatement.display
  end
end

account = Account.new
account.deposit(2000)
account.deposittransaction
account.withdraw(1000)
account.withdrawaltransaction
account.printstatement
