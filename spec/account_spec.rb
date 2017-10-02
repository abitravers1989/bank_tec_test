require 'account'
require 'spec_helper'

describe Account do
  let (:account) { Account.new }

  it 'there is a balance in the account which starts at zero' do
    expect(account.balance).to eq 0
  end
end

# describe Deposit do
#
#   it 'accepts an amount of money from a user and increments their account by that much' do
#     let (2500) { balance }
#      amount = 2000
#      user.deposit
#      expect (user.amount).to eq (2000)
#   end
