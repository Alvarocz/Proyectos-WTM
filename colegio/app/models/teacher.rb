class Teacher < ActiveRecord::Base
  has_many :homeworks
  has_many :answers
  belongs_to :subject
end
