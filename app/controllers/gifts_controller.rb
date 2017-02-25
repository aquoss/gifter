class GiftsController < ApplicationController

  def getRecommendations
    recipient = find_by_id(params[:id])
    matches = {}
    Gifts.all.each do |gift|
      count = 0
      gift.traits.each do |key, value|
        if recipient.traits.key == value
          count ++
        end
        matches.gift = count
      end
    end
    @top_gifts = matches.sort_by{|k,v| -v}[0..10].to_h
  end

end
