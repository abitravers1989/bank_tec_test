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

  def tostringandjoin(n)
   n.to_s + ' || '
  end

  def displaysetting
    @transactioninfo.each do |y|
      @string << tostringandjoin(y[:date]) + tostringandjoin(y[:credit]) + tostringandjoin(y[:debit]) + tostringandjoin(y[:balance])
    end
  end


  def display
    p @string
    displaysetting
    @string.each do |x|
      puts x
    end
  end
end

statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
statement.display
