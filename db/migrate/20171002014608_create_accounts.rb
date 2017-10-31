class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
        t.string :name
        t.string :phone
        t.string :email

        t.timestamps
    end
    add_foreign_key :homes, :aid
  end
end
