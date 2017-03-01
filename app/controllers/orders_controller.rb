class OrdersController < ApplicationController

  def create
    order = Order.new(order_params)
    if order.save
      flash[:notice] = "New order created!"
    else
      flash[:error] = order.errors.full_messages.join(". ")
    end
  end

  private
  def order_params
    params.require(:order).permit(:first_name, :last_name, :address_line_1, :address_line_2, :city, :state, :zip_code, :country, :event_id, :gift_id, :gift_message, :total_price)
  end

end
