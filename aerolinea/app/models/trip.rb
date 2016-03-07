class Trip < ActiveRecord::Base
  belongs_to :airline
  belongs_to :route
  has_many :pilots
end
