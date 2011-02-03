class Trip < ActiveRecord::Base
  has_many :locations, :order => "arrival_date ASC"
  accepts_nested_attributes_for :locations

  belongs_to :user
end
