class Student < ActiveRecord::Base
  has_many :homworks
  has_many :subjects
  has_many :answers
end
