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

  def deposit_transaction
    date = DateNow.new.create_date
    @transaction << { credit: @credit, balance: @balance, date: date }
  end

  def withdraw(n)
    @balance -= n
    @debit = n
  end

  def withdrawal_transaction
    date = DateNow.new.create_date
    @transaction << { debit: @debit, balance: @balance, date: date }
  end

# controls application
# logs transaction
# calculates balance

# use class instead of hash !
  def print_statement
    account_statement = StatementDisplay.new(@transaction)
    account_statement.print_statment_header
    account_statement.display
  end
end

# account = Account.new
# account.deposit(2000)
# account.deposit_transaction
# account.withdraw(1000)
# account.withdrawal_transaction
# account.print_statement
