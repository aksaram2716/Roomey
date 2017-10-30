class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: false do |t|
        t.string :name
        t.string :phone
        t.integer :uid , :primary_key

        t.timestamps
    end
    add_foreign_key :homes, :aid
  end
end
