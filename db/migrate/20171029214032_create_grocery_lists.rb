class CreateGroceryLists < ActiveRecord::Migration[5.1]
  def change
    create_table :grocery_lists do |t|
      t.decimal :price
      t.string :name
      t.integer :timesBought
      t.references :homes
    end
  end
end
