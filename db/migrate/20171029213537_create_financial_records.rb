class CreateFinancialRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :financial_records do |t|
      t.decimal :amount
      t.timestamp :dateOwed
      t.timestamp :datePaid
      t.integer :receiverUID
      t.integer :recieverSID
      t.boolean :paid
      t.decimal :amount
    end
    add_foreign_key :homes, :id
    add_foreign_key :users, :id
  end
end
