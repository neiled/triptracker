class Location < ActiveRecord::Base
  belongs_to :trip
  validates_presence_of :name, :arrival_date
  has_and_belongs_to_many :transports, :join_table => "locations_transports"
end
