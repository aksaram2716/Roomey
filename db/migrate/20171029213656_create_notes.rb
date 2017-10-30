class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes, id: false do |t|
      t.string :text
      t.timestamp :startDate
      t.timestamp :endDate
      t.boolean :public
      t.integer :noteID, :primary_key
      t.integer :aid
      t.integer :uid
    end
  end
end
