class RecipientEvent < ApplicationRecord
  belongs_to :recipient
  belongs_to :event
end
