class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :section
      t.string :section_number
      t.string :row
      t.integer :seat_number
      t.boolean :available
      t.boolean :sold
      t.decimal :price
      t.string :barcode

      t.timestamps null: false
    end
  end
end
