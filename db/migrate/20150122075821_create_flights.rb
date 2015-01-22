class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.string :airline
      t.string :destination
      t.datetime :departure

      t.timestamps null: false
    end
  end
end
