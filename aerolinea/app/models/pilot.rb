class Pilot < ActiveRecord::Base
  belongs_to :airplane
  has_many :routes, :through => :trips

  validates :name, presence: true
  validates :identification, presence: true 
end
