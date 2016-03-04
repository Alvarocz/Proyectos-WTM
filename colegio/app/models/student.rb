class Student < ActiveRecord::Base
  has_many :homworks
  has_and_belongs_to_many :subjects
  has_many :answers

  validates :name, presence: true
  validates :id, uniqueness: true
end
