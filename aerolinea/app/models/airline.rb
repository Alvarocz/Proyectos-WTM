class Airline < ActiveRecord::Base
  has_many :routes
  has_many :airplanes
end
