module RecipientsHelper

  def sort_upcoming_events events
    upcoming = events.where("calendar_date > ?", Date.today)
    upcoming.sort_by &:calendar_date
  end

  def sort_past_events events
    past = events.where("calendar_date < ?", Date.today)
    sorted = past.sort_by &:calendar_date
    sorted.reverse
  end

  def find_trait recipient
    @trait = recipient.traits.first
  end

  def new_event
    @event = Event.new
  end

  def new_trait
    @trait = Trait.new
  end

end
