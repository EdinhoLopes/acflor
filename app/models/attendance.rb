class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :date, presence: true
  validates :present, inclusion: { in: [true, false] }
end
