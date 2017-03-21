module UsersHelper

  def next_event recipient
    events = recipient.events.where('calendar_date > ?', Date.today).sort_by &:calendar_date
    events.first
  end

  def new_recipient
    @recipient = Recipient.new
  end

  def calendar_events user
    recipient_ids = []
    user.recipients.each do |recipient|
      recipient_ids << recipient.id
    end
    @calendar_events = Event.where(recipient_ids.include? :recipient_id)
  end

  # def get_upcoming_gifts user
  #   recipient_ids = []
  #   user.recipients.each do |recipient|
  #     recipient_ids << recipient.id
  #   end
  #   @upcoming_gifts = Event.where(recipient_ids.include? :recipient_id).where('calendar_date < ?', 14.days.from_now).where('calendar_date > ?', 1.day.ago)
  # end

end
