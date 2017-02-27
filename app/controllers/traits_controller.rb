class TraitsController < ApplicationController

  def update
    trait = Trait.find_by(traitable_id: params[:id], traitable_type: Recipient)
    if trait.update(params)
      flash[:notice] = "Successfully updated!"
    else
      flash[:error] = recipient.errors.full_messages.join(". ")
    end
  end

end
