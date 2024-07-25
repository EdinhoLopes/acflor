class Entity < ApplicationRecord
    validates :name, :responsible, :address, :phone, :email, presence: true
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, format: { with: /\A\+?[0-9]{10,15}\z/, message: "deve ser um número válido" }
end
