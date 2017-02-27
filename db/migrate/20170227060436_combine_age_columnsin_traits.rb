class CombineAgeColumnsinTraits < ActiveRecord::Migration[5.0]
  def change
    add_column :traits, :age, :string
    remove_column :traits, :infant
    remove_column :traits, :child
    remove_column :traits, :teenager
    remove_column :traits, :young_adult
    remove_column :traits, :adult
    remove_column :traits, :senior
  end
end
