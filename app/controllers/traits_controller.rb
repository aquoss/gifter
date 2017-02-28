class TraitsController < ApplicationController

  def update
    trait = Trait.find(params[:trait_id])
    if trait.update(trait_params)
      flash[:notice] = "Successfully updated!"
      redirect_to(:back)
    else
      flash[:error] = trait.errors.full_messages.join(". ")
      redirect_to(:back)
    end
  end

  def trait_params
    params.require(:trait).permit(:reading, :art, :fashion, :travel, :film, :electronics, :gaming, :outdoor_activities, :cooking, :sports, :music, :age, :cheapest_price, :low_price, :med_price, :high_price, :id, :traitable_id, :traitable_type)
  end

end
