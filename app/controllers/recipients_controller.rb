class RecipientsController < ApplicationController

  def show
    @recipient = Recipient.find(params[:id])
  end

  def new
    @recipient = Recipient.find(params[:id])
  end

  def edit
    @recipient = Recipient.find(params[:id])
  end

  def create
    recipient = Recipient.new(recipient_params)
    if recipient.save
      flash[:notice] = "New recipient created!"
      trait = Trait.new(traitable_id: recipient.id, traitable_type: "Recipient")
      trait.save
      redirect_to edit_recipient_path(recipient)
    else
      flash[:error] = recipient.errors.full_messages.join(". ")
      redirect_to user_path(current_user)
    end
  end

  def update
    recipient = Recipient.find(params[:id])
    if recipient.update(recipient_params)
      flash[:notice] = "Successfully updated!"
      redirect_to(:back)
    else
      flash[:error] = recipient.errors.full_messages.join(". ")
      redirect_to(:back)
    end
  end


  private
  def recipient_params
    params.require(:recipient).permit(:first_name, :last_name, :gift_ideas, :address_line_1, :address_line_2, :zip_code, :city, :state, :country, :user_id)
  end

end
