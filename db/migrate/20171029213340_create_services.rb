class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :type
      t.string :name
      t.string :location
      t.string :website

    end
  end
end
