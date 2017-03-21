class GiftsController < ApplicationController

  def index
    @recipient = Recipient.find(params[:id])
    @event = Event.find(params[:event_id])
    get_recommendations @recipient
  end

  def to_trait_hash instance
    instance.traits.map(&:attributes).first
  end

  def top_ten gift_hash
    gift_hash.sort_by{|k,v| -v}[0..10].to_h
  end

  def get_ids gift_hash
    gift_ids = []
    gift_hash.each do |k,v|
      gift_ids << k
    end
    gift_ids
  end

  def find_gift_matches recipient_traits
    matches = {}
    Gift.all.each do |gift|
      count = 0
      gift_traits = to_trait_hash gift
      gift_traits.each do |k,v|
        if recipient_traits[k] == v
          count += 1
        end
      end
      matches[gift.id] = count
    end
    matches
  end

  def get_recommendations recipient
    recipient_traits = to_trait_hash recipient
    matches = find_gift_matches recipient_traits
    top_gifts = top_ten matches
    top_gift_ids = get_ids top_gifts
    @gift_recs = Gift.find(top_gift_ids)
  end


end
