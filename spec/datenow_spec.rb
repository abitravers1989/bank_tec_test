require 'datenow.rb'
require 'spec_helper'

describe DateNow do
  let (:date) { DateNow.new }

  context '#createdate' do
    it 'inputs the new date into the date array' do
      expect(Date).to receive_message_chain(:today, :strftime)
      date.create_date
    end
  end
end

# allow(date).to receive_message_chain(:today, :strftime).and_return("04/10/2017")
