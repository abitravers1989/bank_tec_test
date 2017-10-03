require 'Date'
# to create date
class Datenow
  attr_accessor :datenow

  def initialize
    @datenow = datenow
  end

  def createdate
    @datenow = Date.today.strftime('%d/%m/%Y')
  end
end
