module RecipientsHelper

  def sortUpcomingEvents events
    upcoming = events.where("calendar_date > ?", Date.today)
    upcoming.sort_by &:calendar_date
  end

  def sortPastEvents events
    past = events.where("calendar_date < ?", Date.today)
    sorted = past.sort_by &:calendar_date
    sorted.reverse
  end

  def findTrait recipient
    @trait = recipient.traits.first
  end

end
