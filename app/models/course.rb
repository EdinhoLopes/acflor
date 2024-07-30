class Course < ApplicationRecord
  belongs_to :entity
  has_many :students

  validates :course_name, presence: true
end
