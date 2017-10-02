class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
