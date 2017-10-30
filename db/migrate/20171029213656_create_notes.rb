class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes, id: false do |t|
      t.string :text
      t.timestamp :startDate
      t.timestamp :endDate
      t.boolean :public
      t.integer :noteID, :primary_key
    end
    add_foreign_key :homes, :aid
    add_foreign_key :users, :uid
  end
end
