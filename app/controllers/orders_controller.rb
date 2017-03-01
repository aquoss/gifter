class OrdersController < ApplicationController

  def new
    @recipient = Recipient.find(params[:id])
    @event = Event.find(params[:event_id])
    @gift = Gift.find(params[:gift_id])
    @order = Order.new
    @amount = @gift.price + 3.99
  end

  def create
    recipient = Recipient.find(params[:id])
    event = Event.find(params[:event_id])
    gift = Gift.find(params[:gift_id])
    order = Order.new(order_params)
    if order.save
      flash[:notice] = "New order created!"
      redirect_to new_charge_path(recipient, event, gift)
    else
      flash[:error] = order.errors.full_messages.join(". ")
      redirect_to new_order_path(recipient, event, gift)
    end
  end

  private
  def order_params
    params.require(:order).permit(:first_name, :last_name, :address_line_1, :address_line_2, :city, :state, :zip_code, :country, :event_id, :gift_id, :gift_message, :total_price, :gift_id, :event_id)
  end

end
