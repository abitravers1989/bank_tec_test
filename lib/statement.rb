require 'Date'
require 'account'
# this class is for storing the statement

class Statement
  attr_accessor :date

  def initialize
    @date = []
  end

  def createdate
    @date << Date.today.strftime('%d/%m/%Y')
  end
end

st = Statement.new
st.createdate
st.date
