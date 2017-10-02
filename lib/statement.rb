require 'date'
require 'account'
# this class is for storing the statement

class Statement

  def printstatmentheader
    print "date || credit || debit || balance"
  end

  def display
    @statement.each do |y|
      # string = []
      print y[:date]
      print " || "
      print y[:credit]
      print " || "
      print y[:debit]
      print " || "
      print y[:balance]
    end
  end

end

st = Statement.new
ac = Account.new
ac.deposit(20)
st.printstatmentheader
