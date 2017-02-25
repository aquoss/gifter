class CreateRecipients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
