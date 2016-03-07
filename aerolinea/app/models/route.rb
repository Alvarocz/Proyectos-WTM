class Route < ActiveRecord::Base
  belongs_to :airline
  has_and_belongs_to_many :pilots
  has_many :airplanes
end
