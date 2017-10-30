class CreateChores < ActiveRecord::Migration[5.1]
  def change
    create_table :chores, id: false do |t|
      t.string :name
      t.boolean :completed
      t.integer :frequency
      t.timestamp :startDate
      t.timestamp :endDate
      t.integer :cid, :primary_key
      t.integer :aid
      t.integer :createdUID
      t.integer :noteID
      t.integer :assignedUID
    end
  end
end
