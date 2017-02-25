class Recipient < ApplicationRecord
  belongs_to :user
  has_many :gift_ideas
  has_many :events
  has_many :traits, as: :traitable
end
