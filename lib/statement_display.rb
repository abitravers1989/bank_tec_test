
require 'account'
# this class is for storing the statement

class Statement_Display
  def printstatmentheader
    print 'date || credit || debit || balance'
  end

  def display
    @statement.each do |y|
      # string = []
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
