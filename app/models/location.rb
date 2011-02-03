class Location < ActiveRecord::Base
  belongs_to :trip
  acts_as_list :scope => :trip

  validates_presence_of :name, :arrival_date
  has_and_belongs_to_many :transports, :join_table => "locations_transports"

  before_create :set_lat_long, :calc_distance

  private

    def set_lat_long
      p = Geokit::Geocoders::GoogleGeocoder.geocode(self.name)
      if p
        self.lat = p.lat
        self.long = p.lng
      end
    end # set_woeid

    def calc_distance
      p "here"
      if higher_item
        my_ll = GeoKit::LatLng.new(self.lat, self.long)
        other_ll = GeoKit::LatLng.new(higher_item.lat, higher_item.long)
        self.distance = my_ll.distance_to(other_ll)
      else
        self.distance = nil
      end
    end


end
