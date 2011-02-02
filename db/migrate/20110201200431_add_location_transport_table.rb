class AddLocationTransportTable < ActiveRecord::Migration
  def self.up
    create_table :locations_transports, :id => false do |t|
      t.integer :location_id
      t.integer :transport_id
    end
  end

  def self.down
    drop_table :locations_transports
  end
end
