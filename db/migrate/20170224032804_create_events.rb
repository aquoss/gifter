class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :calendar_date
      t.string :occasion
      t.boolean :recurring_yearly
      t.belongs_to :recipient, foreign_key: true

      t.timestamps
    end
  end
end
