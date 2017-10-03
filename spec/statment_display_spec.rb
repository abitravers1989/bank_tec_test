require 'statement_display'
require 'account'
require 'spec_helper'

describe Statement_Display do
  let (:statement) { Statement_Display.new("credit: 10, balance: 10, date: '03/10/2017'") }

  context '#printstatmentheader' do
    it 'prints the statement header' do
      expect{statement.printstatmentheader}.to output('date || credit || debit || balance').to_stdout
    end
  end
end
