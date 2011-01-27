class Location < ActiveRecord::Base
  belongs_to :trip
  validates_presence_of :name, :arrival_date
end
