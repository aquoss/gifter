class AddImageToGifts < ActiveRecord::Migration[5.0]
  def change
    add_column :gifts, :image, :string
  end
end
