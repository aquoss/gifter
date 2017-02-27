class RecipientsController < ApplicationController

  def show
    @recipient = Recipient.find(params[:id])
  end

  def edit
    @recipient = Recipient.find(params[:id])
  end

  def update
    recipient = Recipient.find(params[:id])
    if recipient.update(recipient_params)
      redirect_to recipient_path(recipient)
    else
      flash[:error] = recipient.errors.full_messages.join(". ")
      # redirect_to edit_city_post_path(@city, post)
    end
  end

  def update_ideas
    recipient = Recipient.find(params[:id])
    recipient.update(recipient_params)
  end

  private
  def recipient_params
    params.require(:recipient).permit(:first_name, :last_name, :gift_ideas, :address_line_1, :address_line_2, :zip_code, :city, :state, :country)
  end

end
