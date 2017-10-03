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

  def formatter(n)
   n.to_s + ' || '
  end

  def displaysetting
    @transactioninfo.each do |y|
      @string << formatter(y[:date]) + formatter(y[:credit]) + formatter(y[:debit]) + formatter(y[:balance])
    end
  end


  def display
    displaysetting
    @string.each do |x|
      puts x
    end
  end
end
