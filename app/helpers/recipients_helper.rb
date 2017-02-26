module RecipientsHelper

  def sortEvents events
    events.sort_by &:calendar_date 
  end

end
