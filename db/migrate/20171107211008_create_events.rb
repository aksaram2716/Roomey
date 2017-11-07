class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.timestamp :creationDate
      t.timestamp :eventDate
      t.references :user, foreign_key: true
    end
  end
end
