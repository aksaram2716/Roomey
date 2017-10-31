class CreateGroceryLists < ActiveRecord::Migration[5.1]
  def change
    create_table :grocery_lists, id: false do |t|
      t.decimal :price
      t.string :name
      t.integer :timesBought
      t.integer :gid, :primary_key, auto_increment: true
    end
    add_foreign_key :homes, :aid
  end
end
