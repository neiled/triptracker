class AddLatAndLongToLocation < ActiveRecord::Migration
  def self.up
    add_column :locations, :lat, :decimal
    add_column :locations, :long, :decimal
  end

  def self.down
    remove_column :locations, :lat
    remove_column :locations, :long
  end
end
