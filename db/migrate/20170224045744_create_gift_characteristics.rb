class CreateGiftCharacteristics < ActiveRecord::Migration[5.0]
  def change
    create_table :gift_characteristics do |t|
      t.belongs_to :gift, foreign_key: true
      t.belongs_to :characteristic, foreign_key: true

      t.timestamps
    end
  end
end
