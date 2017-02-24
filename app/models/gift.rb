class Gift < ApplicationRecord
  has_many :orders
  has_many :events, through: :orders
  has_many :giftCharacteristics
  has_many :characteristics, through: :giftCharacteristics
end
