require 'account'
# this class is for storing the statement

class Statement_Display
  def initialize(transactioninfo)
    @transactioninfo = transactioninfo
  end

  def printstatmentheader
    print 'date || credit || debit || balance'
  end

  # def transactionstring
  #   @transactioninfo.each do |y|
  # end
  #
  # def display
  #   @transactioninfo.each do |y|
  #     k = puts y[:date] + y[:credit] + y[:debit] + y[:balance]
  #     print k.join(" || ")
  #   end

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
