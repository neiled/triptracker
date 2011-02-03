class AddDistanceToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :distance, :decimal
    remove_column :locations, :latitude
    remove_column :locations, :longitude
  end

  def self.down
    remove_column :locations, :distance
    add_column :locations, :latitude, :decimal
    add_column :locations, :longitude, :decimal
  end
end
