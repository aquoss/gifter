class Trait < ApplicationRecord
  belongs_to :traitable, polymorphic: true
end
