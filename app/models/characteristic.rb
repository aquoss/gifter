class Characteristic < ApplicationRecord
  has_many :recipientCharacteristics
  has_many :recipients, through: :recipientCharacteristics
  has_many :giftCharacteristics
  has_many :gifts, through: :giftCharacteristics
end
