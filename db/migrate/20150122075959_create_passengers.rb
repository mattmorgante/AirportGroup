class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :passport_id
      t.string :name
      t.integer :age
      t.references :flight, index: true

      t.timestamps null: false
    end
    add_foreign_key :passengers, :flights
  end
end
