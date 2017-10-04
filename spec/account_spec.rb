require 'account'
require 'spec_helper'

describe Account do
  # this is just assigning
  let(:account) { Account.new }
  # don't double a class you are trying to test

  context '#initialize' do
    it 'there is a balance in the account which starts at zero' do
      expect(account.balance).to eq 0
    end

    it 'there is an empty array to representa a transaction' do
      expect(account.transaction).to be_instance_of Array
      expect(account.transaction).to be_empty
    end
  end

  context '#deposit' do
    it 'changes the account balance' do
      expect { account.deposit(10) }.to (change{ account.balance })
    end

    it 'increases the account balance by amount deposited' do
      expect { account.deposit(10) }.to (change{ account.balance }.from(0).to(10))
    end
  end

  context '#deposit_transaction' do
    before (:each) do
      account.deposit(10)
      account.deposit_transaction
    end

    it 'Adds to the transaction array' do
      expect(account.transaction).not_to be_empty
    end

    it 'Adds credit balance and date to the transaction array' do
      expect(account.transaction).to include({ credit: 10, balance: 10, date: '04/10/2017' })
    end
  end

  context '#withdrawal' do
    it 'changes the account balance' do
      expect { account.withdraw(10) }.to (change{ account.balance })
    end

    it 'decreases the account balance by amount withdrawn' do
      account.deposit(10)
      # allow(account).to receive (:deposit) { 10 }
      # expect(account.balance).to eq 10
      expect { account.withdraw(10) }.to (change{ account.balance }.from(10).to(0))
    end
  end

  context '#withdrawal_transaction' do
    before (:each) do
      account.deposit(2000)
      account.deposit_transaction
      account.withdraw(1000)
      account.withdrawal_transaction
    end

    it 'Adds to the transaction array' do
      expect(account.transaction).not_to be_empty
    end

    # it 'Adds credit balance and date to the transaction array' do
    #   expect(account.transaction).to include {:credit => 2000, :balance => 2000, :date => "03/10/2017"}, {:debit => 1000, :balance => 1000, :date => "03/10/2017"}
    # end
  end

  # context '#print_statement'
  #   let (:statement) { Statement_Display.new({ credit: 10, balance: 10, date: '03/10/2017' }) }
  #
  #   it 'calls on the methods in statement display' do
  #     expect(account.printstatement).to include ("date || credit || debit || balance")
  #  end
end
