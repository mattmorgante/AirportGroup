class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticket_id
      t.references :flight, index: true
      t.references :passenger, index: true

      t.timestamps null: false
    end
    add_foreign_key :tickets, :flights
    add_foreign_key :tickets, :passengers
  end
end
