module UsersHelper

  def nextEvent recipient
    events = recipient.events.where('calendar_date > ?', Date.today).sort_by &:calendar_date
    events.first 
  end

end
