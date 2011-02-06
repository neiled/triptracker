class Location < ActiveRecord::Base
  belongs_to :trip
  acts_as_list :scope => :trip

  validates_presence_of :name, :arrival_date
  has_and_belongs_to_many :transports, :join_table => "locations_transports"

  before_create :set_lat_long
  after_create :set_position
  before_save :calc_distance

  def self.update_distances
    Location.all.each do |l|
      l.calc_distance
      l.save
    end
    
  end # self.update_distances
  
  def calc_distance
    logger.info "calculating distance for " + self.name
    if higher_item
      my_ll = GeoKit::LatLng.new(self.lat, self.long)
      other_ll = GeoKit::LatLng.new(higher_item.lat, higher_item.long)
      self.distance = my_ll.distance_to(other_ll)
    else
      self.distance = nil
    end
  end

  private

    def set_lat_long
      unless self.lat and self.long
        p = Geokit::Geocoders::GoogleGeocoder.geocode(self.name)
        if p
          self.lat = p.lat
          self.long = p.lng
        end
      end
    end # set_woeid


    def set_position
      found_position = false
      locations = self.trip.locations.order(:position)
      locations.each do |l|
        if l != self and self.arrival_date < l.arrival_date and not found_position
          insert_at(l.position)
          found_position = true
        end
      end
      Location.update_distances
    end




end
