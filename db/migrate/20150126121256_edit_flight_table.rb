class EditFlightTable < ActiveRecord::Migration
  def change
    rename_column :flights, :departure, :departure_time
    rename_column :flights, :from, :origin
    add_column :flights, :passengers_capacity, :integer
  end
end
