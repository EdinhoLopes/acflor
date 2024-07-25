class StudentHistory < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :grade, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
