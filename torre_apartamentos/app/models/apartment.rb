class Apartment < ActiveRecord::Base
  belongs_to :towers
  has_many :people
end
