class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :calendar_date
      t.string :type
      t.boolean :recurring_yearly

      t.timestamps
    end
  end
end
