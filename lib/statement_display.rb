require 'account'

# this class is for storing the statement
class StatementDisplay
  attr_accessor :string, :transaction_info

  def initialize(transaction_info)
    @transaction_info = transaction_info
    @string = []
  end

  def print_statment_header
    print 'date || credit || debit || balance'
  end

  def string_intepolation(n)
    "#{n[:date]} || #{n[:credit]} || #{n[:debit]} || #{n[:balance]}"
  end

  def display
    @transaction_info.each do |y|
      puts string_intepolation(y)
    end
  end
end


class Output

  def initialize(output=STDOUT)
    @output = output
  end

  def print(statement)
    puts statement
  end

end

# statement = StatementDisplay.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
