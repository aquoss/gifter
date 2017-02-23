class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :stripe_id
      t.integer :phone_number
      t.string :phone_carrier
      t.boolean :email_reminder?
      t.boolean :sms_reminder?
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :state
      t.string :country
      t.boolean :admin?

      t.timestamps
    end
  end
end
