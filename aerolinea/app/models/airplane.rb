class Airplane < ActiveRecord::Base
  belongs_to :airiline
  belongs_to :pilot
  belongs_to :route

  validates :name, presence: true
end
