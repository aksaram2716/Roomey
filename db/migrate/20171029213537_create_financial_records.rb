class CreateFinancialRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :financial_records, id: false do |t|
      t.decimal :amount
      t.timestamp :dateOwed
      t.timestamp :datePaid
      t.integer :receiverUID
      t.integer :recieverSID
      t.boolean :paid
      t.decimal :amount
      t.integer :transactionID, :primary_key, auto_increment: true
    end
    add_foreign_key :homes, :aid
    add_foreign_key :users, :uid
  end
end
