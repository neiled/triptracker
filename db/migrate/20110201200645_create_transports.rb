class CreateTransports < ActiveRecord::Migration
  def self.up
    create_table :transports do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :transports
  end
end
