class CreateFinancialRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :financial_records, id: false do |t|
      t.decimal :amount
      t.timestamp :dateOwed
      t.timestamp :datePaid
      t.integer :uid
      t.integer :aid
      t.integer :receiverUID
      t.integer :recieverSID
      t.boolean :paid
      t.decimal :amount
      t.integer :transactionID, :primary_key
    end
  end
end
