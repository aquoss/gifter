module UsersHelper

  def nextEvent recipient
    events = recipient.events.where('calendar_date > ?', Date.today).sort_by &:calendar_date
    events.first
  end

  def allEvents recipient
    @events = recipient.events
  end

  def newRecipient
    @recipient = Recipient.new
  end

end
