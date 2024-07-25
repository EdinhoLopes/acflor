class Student < ApplicationRecord
  belongs_to :course
  has_many :student_histories, dependent: :destroy
  has_many :attendances, dependent: :destroy

  validates :name, :date_of_birth, :registration_number, presence: true
  validates :registration_number, uniqueness: true
end
