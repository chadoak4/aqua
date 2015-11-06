class Cleanup < ActiveRecord::Base
  attachment       :beach_image
  geocoded_by      :location
  after_validation :geocode, if: proc { |cleanup| location_changed? && (cleanup.latitude.nil? || cleanup.longitude.nil?) }
  belongs_to       :user
  has_many :attendingevents

end
