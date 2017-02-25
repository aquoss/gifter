module UsersHelper

  def find_orders event
    @orders = Order.find_by(event_id: event.id)
  end

end
