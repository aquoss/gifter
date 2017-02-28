module UsersHelper

  def nextEvent recipient
    events = recipient.events.where('calendar_date > ?', Date.today).sort_by &:calendar_date
    events.first
  end

  def newRecipient
    @recipient = Recipient.new
  end

  def calendarEvents user
    recipient_ids = []
    user.recipients.each do |recipient|
      recipient_ids << recipient.id
    end
    @calendar_events = Event.where(recipient_ids.include? :recipient_id)
  end

  # def upcomingGifts user
  #   recipient_ids = []
  #   user.recipients.each do |recipient|
  #     recipient_ids << recipient.id
  #   end
  #   @upcoming_gifts = Event.where(recipient_ids.include? :recipient_id).where('calendar_date < ?', 14.days.from_now).where('calendar_date > ?', 1.day.ago)
  # end

end
