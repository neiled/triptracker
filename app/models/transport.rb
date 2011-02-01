class Transport < ActiveRecord::Base
  has_and_belongs_to_many :locations, :join_table => "locations_transports"
end
