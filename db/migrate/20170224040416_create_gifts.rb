class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :item
      t.float :price
      t.boolean :ordered, default: false
      t.string :tracking_number
      t.boolean :confirmed_delivery

      t.timestamps
    end
  end
end
