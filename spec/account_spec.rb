require 'account'
require 'spec_helper'

describe Account do
  let (:account) { Account.new }

  it 'there is a balance in the account which starts at zero' do
    expect(account.balance).to eq 0
  end

  context '#deposit' do
    it 'changes the account balance' do
      expect { account.deposit(10) }.to change { account.balance }
    end

    it 'increases the account balance by amount deposited' do
      expect { account.deposit(10) }.to change { account.balance }.from(0).to(10)
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
