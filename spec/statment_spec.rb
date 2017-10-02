require 'statement'
require 'account'
require 'spec_helper'

describe Statement do
  let (:statement) { Statement.new }
  let (:date) { Date.new }

  context '#initialize' do
    it 'is initialized with an empty array for date' do
      expect(statement.date).to be_instance_of Array
      expect(statement.date).to be_empty
    end
  end

  context '#createdate' do
    it 'inputs the new date into the date array' do
      statement.createdate
      # allow(date).to receive(:today).and_return(02/10/2017)
      expect(statement.date).to include('02/10/2017')
    end
  end
end

# it 'recieves a hash from the account class with the amount deposited and the balance' do
#
# end
#
# it 'adds the date to a hash of balances'
#
# end
#
# it 'creates a new array with the deposit amount, balance and date per transaction' do
#
# end
