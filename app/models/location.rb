class Location < ActiveRecord::Base
  belongs_to :trip
  validates_presence_of :name, :arrival_date
  has_and_belongs_to_many :transports, :join_table => "locations_transports"

  before_create :set_lat_long

  def set_lat_long
    p =Geokit::Geocoders::GoogleGeocoder.geocode(self.name)
    if p
      self.lat = p.lat
      self.long = p.lng
    end
  end # set_woeid


end
