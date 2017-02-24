class RenameTypeToOccasion < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :type, :occasion
  end
end
