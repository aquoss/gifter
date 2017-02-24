class RecipientCharacteristic < ApplicationRecord
  belongs_to :recipient
  belongs_to :characteristic
end
