class Event < ApplicationRecord
  belongs_to :recipient
  has_many :orders
  has_many :gifts, through: :orders
end
