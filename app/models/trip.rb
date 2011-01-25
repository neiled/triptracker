class Trip < ActiveRecord::Base
  has_many :locations
  accepts_nested_attributes_for :locations

  belongs_to :user
end
