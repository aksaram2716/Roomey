class CreateGroceryLists < ActiveRecord::Migration[5.1]
  def change
    create_table :grocery_lists do |t|
      t.decimal :price
      t.string :name
      t.integer :timesBought
    end
    add_foreign_key :homes, :id
  end
end
