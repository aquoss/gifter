class CreateGiftIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :gift_ideas do |t|
      t.text :idea
      t.belongs_to :recipient, foreign_key: true

      t.timestamps
    end
  end
end
