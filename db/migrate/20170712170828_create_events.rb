class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :hometeam
      t.string :vistor

      t.timestamps null: false
    end
  end
end
