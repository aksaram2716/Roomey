class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :text
      t.timestamp :startDate
      t.timestamp :endDate
      t.boolean :public
      t.references :homes
      t.references :users
    end
  end
end
