class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :gift, foreign_key: true

      t.timestamps
    end
  end
end
