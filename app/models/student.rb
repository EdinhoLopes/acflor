class Student < ApplicationRecord
  belongs_to :course
  has_many :student_histories, dependent: :destroy
  has_many :attendances, dependent: :destroy

  validates :name, :date_of_birth, :address, :phone, :email, :registration_number, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, format: { with: /\A\+?[0-9]{10,15}\z/, message: "deve ser um número válido" }
end
