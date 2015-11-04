class Cleanup < ActiveRecord::Base
  attachment  :beach_image
  geocoded_by :location
  after_validation :geocode
end
