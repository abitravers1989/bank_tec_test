require 'account'
require 'spec_helper'

describe Account do
  let (:account) { Account.new }

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
      expect { account.deposit(10) }.to change { account.balance }
    end

    it 'increases the account balance by amount deposited' do
      expect { account.deposit(10) }.to change { account.balance }.from(0).to(10)
    end
  end

  context '#deposittransaction' do
    before (:each) do
      account.deposit(10)
      account.deposittransaction
    end

    it 'Adds to the transaction array' do
      expect(account.transaction).not_to be_empty
    end

    it 'Adds credit balance and date to the transaction array' do
      expect(account.transaction).to include ({ credit: 10, balance: 10, date: '03/10/2017' })
    end
  end

  context '#withdrawal' do
    it 'changes the account balance' do
      expect { account.withdraw(10) }.to change { account.balance }
    end

    it 'decreases the account balance by amount withdrawn' do
      account.deposit(10)
      # allow(account).to receive (:deposit) { 10 }
      # expect(account.balance).to eq 10
      expect { account.withdraw(10) }.to change { account.balance }.from(10).to(0)
    end
  end
end
