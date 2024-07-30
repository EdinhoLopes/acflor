class Course < ApplicationRecord
    has_many :students
    has_many :student_histories, dependent: :destroy
    has_many :attendances, dependent: :destroy
  
    validates :course_name, :course_code, presence: true
    validates :course_code, uniqueness: true

end
