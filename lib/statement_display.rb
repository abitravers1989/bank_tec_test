require 'account'
# this class is for storing the statement

class Statement_Display
  attr_accessor :string

  def initialize(transactioninfo)
    @transactioninfo = transactioninfo
    @string = []
  end

  def printstatmentheader
    print 'date || credit || debit || balance'
  end

  def displaysetting
    @transactioninfo.each do |y|
      @string << y[:date].to_s + ' || ' + y[:credit].to_s + ' || ' + y[:debit].to_s + ' || ' + y[:balance].to_s
    end
  end

  def display
    displaysetting
    @string.each do |x|
      puts x
    end
  end
end

statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
statement.display
