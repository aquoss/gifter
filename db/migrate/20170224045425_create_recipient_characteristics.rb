class CreateRecipientCharacteristics < ActiveRecord::Migration[5.0]
  def change
    create_table :recipient_characteristics do |t|
      t.belongs_to :recipient, foreign_key: true
      t.belongs_to :characteristic, foreign_key: true

      t.timestamps
    end
  end
end
