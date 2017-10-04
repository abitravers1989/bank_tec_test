require 'account'

# this class is for storing the statement
class Statement_Display
  attr_accessor :string, :transactioninfo

  def initialize(transactioninfo)
    @transactioninfo = transactioninfo
    @string = []
  end

  def printstatmentheader
    print 'date || credit || debit || balance'
  end

  def stringintepolation(n)
      "#{n[:date]} || #{n[:credit]} || #{n[:debit]} || #{n[:balance]}"
  end

  def display
    @transactioninfo.each do |y|
      puts stringintepolation(y)
    end
  end

end

statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
