class AddGiftMessageAndTotalPriceToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :gift_message, :text
    add_column :orders, :total_price, :float
  end
end
