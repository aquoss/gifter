class RecipientsController < ApplicationController

  def show
    @recipient = Recipient.find_by_id(params[:id])

  end

end
