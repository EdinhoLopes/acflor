class Presence < ApplicationRecord
  belongs_to :teacher_course
  belongs_to :student_course
end
