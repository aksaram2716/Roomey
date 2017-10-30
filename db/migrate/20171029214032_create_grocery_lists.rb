class CreateGroceryLists < ActiveRecord::Migration[5.1]
  def change
    create_table :grocery_lists, id: false do |t|
      t.decimal :price
      t.string :name
      t.integer :timesBought
      t.integer :gid, :primary_key
      t.integer :aid
    end
  end
end
