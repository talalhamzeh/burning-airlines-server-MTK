class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.text :number
      t.integer :airplane_id
      t.date :date
      t.text :destination
      t.text :departure

      t.timestamps
    end
  end
end
