require 'Date'

class Datenow
  attr_accessor :datenow

  def initialize
    @datenow = datenow
  end

  def createdate
    @datenow = Date.today.strftime('%d/%m/%Y')
  end
end


class Statement_Display

  def initialize(transactioninfo)
    @transactioninfo = transactioninfo
  end

  def printstatmentheader
    print 'date || credit || debit || balance'
  end

  def display
    @transactioninfo.each do |y|
      print y[:date]
      print ' || '
      print y[:credit]
      print ' || '
      print y[:debit]
      print ' || '
      print y[:balance]
    end
  end
end


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
