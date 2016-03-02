class Subject < ActiveRecord::Base
  belongs_to :teacher
  has_many :students
  has_many :homeworks
end