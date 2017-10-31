class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :text
      t.timestamp :startDate
      t.timestamp :endDate
      t.boolean :public
    end
    add_foreign_key :homes, :id
    add_foreign_key :users, :id
  end
end
