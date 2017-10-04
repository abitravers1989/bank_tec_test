require 'Date'
# to create date
class DateNow
  attr_accessor :datenow
  def create_date
    Date.today.strftime('%d/%m/%Y')
  end
end
