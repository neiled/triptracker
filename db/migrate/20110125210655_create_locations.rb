class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.date :arrival_date
      t.date :departure_date
      t.integer :trip_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
