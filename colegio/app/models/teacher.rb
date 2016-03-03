class Teacher < ActiveRecord::Base
  has_many :homeworks
  has_many :answers
  has_and_belongs_to_many :subjects
end
