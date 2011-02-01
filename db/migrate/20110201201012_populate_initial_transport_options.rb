class PopulateInitialTransportOptions < ActiveRecord::Migration
  def self.up
    Transport.create(:name => "Car")
    Transport.create(:name => "Plane")
    Transport.create(:name => "Bike")
    Transport.create(:name => "Boat")
    Transport.create(:name => "Train")
    Transport.create(:name => "Walk")
  end

  def self.down
    deletable_transport = ["Car", "Plane", "Bike", "Boat", "Train", "Walk"]
    Transport.delete_all(:name => deletable_transport)
  end
end
