class Answer < ActiveRecord::Base
  belongs_to :student
  belongs_to :homework
  belongs_to :subject

  validates :score, numericality: { greater_than: 0 }
  validates :score, numericality: { less_than_or_equal_to: 5.0 }
end
