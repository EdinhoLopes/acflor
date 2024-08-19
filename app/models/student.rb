class Student < ApplicationRecord
  belongs_to :entity
  belongs_to :course

  validates :name, :date_of_birth, :address, :phone, :email, presence: true
  validates :email, uniqueness: false, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, format: { with: /\A\+?[0-9]{10,15}\z/, message: "deve ser um número válido" }
end
