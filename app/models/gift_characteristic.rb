class GiftCharacteristic < ApplicationRecord
  belongs_to :gift
  belongs_to :characteristic
end
