require 'account'

# this class is for storing the statement
class StatementDisplay
  attr_accessor :string, :transactioninfo

  def initialize(transactioninfo)
    @transactioninfo = transactioninfo
    @string = []
  end

  def print_statmentheader
    print 'date || credit || debit || balance'
  end

  def string_intepolation(n)
    "#{n[:date]} || #{n[:credit]} || #{n[:debit]} || #{n[:balance]}"
  end

  def display
    @transactioninfo.each do |y|
      puts string_intepolation(y)
    end
  end
end

# statement = StatementDisplay.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
