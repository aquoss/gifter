class GiftsController < ApplicationController

  def index
    getRecommendations
  end

  def getRecommendations
    recipient = Recipient.find(params[:id])
    rec_traits = recipient.traits.map(&:attributes).first
    matches = {}
    Gift.all.each do |gift|
      count = 0
      gift_traits = gift.traits.map(&:attributes).first
      gift_traits.each do |key, value|
        if rec_traits[key] == value
          count += 1
        end
      end
      matches[gift.id] = count
    end
    top_gifts = matches.sort_by{|k,v| -v}[0..10].to_h

    gift_ids = []
    top_gifts.each do |k,v|
      gift_ids << k
    end
    @gift_recs = Gift.find(gift_ids)
  end


end
