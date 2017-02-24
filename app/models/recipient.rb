class Recipient < ApplicationRecord
  belongs_to :user
  has_many :gift_ideas
  has_many :recipientEvents
  has_many :events, through: :recipientEvents
  has_many :recipientCharacteristics
  has_many :characteristics, through: :recipientCharacteristics
end
