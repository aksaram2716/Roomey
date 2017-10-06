class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :address
      t.references :Account, foreign_key: true

      t.timestamps
    end
  end
end
