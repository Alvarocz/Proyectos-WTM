class Homework < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :subject
  has_many :students
end
