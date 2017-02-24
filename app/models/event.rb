class Event < ApplicationRecord
  has_many :recipientEvents
  has_many :recipients, through: :recipientEvents
  has_many :orders
  has_many :gifts, through: :orders
end
