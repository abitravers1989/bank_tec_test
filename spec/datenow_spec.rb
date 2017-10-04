require 'datenow.rb'
require 'spec_helper'

describe Datenow do
  let (:date) { Datenow.new }

  # context '#initialize' do
  #   it 'is initialized with a date' do
  #     expect(date.datenow).to be_truthy
  #   end
  # end

  context '#createdate' do
    it 'inputs the new date into the date array' do
      date.createdate
      # allow(date).to receive(:today).and_return(02/10/2017)
      expect(date.datenow).to include('04/10/2017')
    end
  end
end
