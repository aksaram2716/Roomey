class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes, id: false do |t|
      t.string :name
      t.string :address
      t.integer :electricService
      t.integer :waterService
      t.integer :gasService
      t.integer :homePicture
      t.integer :aid , :primary_key, auto_increment: true
    end
  end
end
