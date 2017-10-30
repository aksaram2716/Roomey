class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes, id: false do |t|
      t.string :name
      t.string :address
      t.references :User, foreign_key: true
      t.string :electricService
      t.string :waterService
      t.string :gasService
      t.string :homePicture
      t.integer :aid , :primary_key
    end
  end
end
