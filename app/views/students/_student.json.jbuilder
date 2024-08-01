json.extract! student, :id, :name, :cpf, :date_of_birth, :address, :phone, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
