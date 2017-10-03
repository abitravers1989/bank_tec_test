require 'account'
# this class is for storing the statement

class Statement_Display
  def initialize(transactioninfo)
    @transactioninfo = transactioninfo
    @string = zero
  end

  def printstatmentheader
    print 'date || credit || debit || balance'
  end

  # def transactionstring
  #   @transactioninfo.each do |y|
  # end
  #

  def display
    @transactioninfo.each do |y|
      puts y[:date].to_s + ' || ' + y[:credit].to_s + ' || ' + y[:debit].to_s + ' || ' + y[:balance].to_s
    end
end
end

statement = Statement_Display.new([{:credit=>2000, :balance=>2000, :date=>"03/10/2017"}, {:debit=>1000, :balance=>1000, :date=>"03/10/2017"}])
statement.display
