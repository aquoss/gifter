class Gift < ApplicationRecord
  has_many :orders
  has_many :events, through: :orders

end
