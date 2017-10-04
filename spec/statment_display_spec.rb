require 'statement_display'
require 'account'
require 'spec_helper'

describe Statement_Display do
  context '#printstatmentheader' do
    it 'prints the statement header' do
      statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
      expect { statement.printstatmentheader }.to output('date || credit || debit || balance').to_stdout
    end
  end

  context '#display' do
    it 'displays the transaction info to standard output' do
      statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }])
      expect { statement.display }.to output("03/10/2017 || 2000 ||  || 2000\n").to_stdout
    end
  end
end

# context '#formattingarrayvalues' do
#   it 'converts a value to a string and adds || to the end of it' do
#       statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
#     expect { statement.formattingarrayvalues(2000) }.to output("2000 ||").to_stdout
#   end
# end

# context '#displaysetting' do
#   it 'puts array of values into string variable' do
#     statement = Statement_Display.new([{ credit: 2000, balance: 2000, date: '03/10/2017' }, { debit: 1000, balance: 1000, date: '03/10/2017' }])
#     statement.displaysetting
#     expect (statement.string).to be_instance_of Array
#   end
# end
