class Warehouse < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  scope :temperature, -> (temperature) { where temperature: temperature }
  scope :rating, -> (rating) { where("rating > ?", rating) }
  scope :capacity_sq_ft, -> (capacity_sq_ft) { where("capacity_sq_ft > ?", capacity_sq_ft) }
end
