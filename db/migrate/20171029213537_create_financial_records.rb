class CreateFinancialRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :financial_records do |t|
      t.decimal :amount
      t.date :dateOwed
      t.date :datePaid
      t.integer :receiverUID
      t.integer :recieverSID
      t.boolean :paid
      t.decimal :amount
      t.references :homes
      t.references :users
    end
  end
end
