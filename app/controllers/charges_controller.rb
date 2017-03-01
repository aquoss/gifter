class ChargesController < ApplicationController
  def new
    @gift = Gift.find(params[:gift_id])
    @event = Event.find(params[:event_id])
    @recipient = Recipient.find(params[:id])
    @amount = @gift.price + 3.99
  end

  def create
    gift = Gift.find(params[:gift_id])
    amount = gift.price * 100 + 399

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => amount.to_i,
      :description => 'Gift Stripe customer',
      :currency    => 'usd'
    )
    current_user.stripe_id = customer.id

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
