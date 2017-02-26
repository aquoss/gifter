class AddGiftIdeasToRecipient < ActiveRecord::Migration[5.0]
  def change
    add_column :recipients, :gift_ideas, :text
  end
end
