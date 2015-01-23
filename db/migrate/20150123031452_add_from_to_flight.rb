class AddFromToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :from, :string
  end
end
