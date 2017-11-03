class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :address
      t.integer :electricService
      t.integer :waterService
      t.integer :gasService
      t.integer :homePicture
      t.references :users
    end
  end
end
