class CreateTraits < ActiveRecord::Migration[5.0]
  def change
    create_table :traits do |t|
      t.boolean :reading
      t.boolean :film
      t.boolean :cooking
      t.boolean :art
      t.boolean :electronics
      t.boolean :sports
      t.boolean :fashion
      t.boolean :gaming
      t.boolean :music
      t.boolean :travel
      t.boolean :outdoor_activities
      t.boolean :infant
      t.boolean :child
      t.boolean :teenager
      t.boolean :young_adult
      t.boolean :adult
      t.boolean :senior
      t.boolean :female
      t.boolean :male
      t.boolean :cheapest_price
      t.boolean :low_price
      t.boolean :med_price
      t.boolean :high_price
      t.references :traitable, polymorphic: true

      t.timestamps
    end
  end
end
