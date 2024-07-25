json.extract! student, :id, :name, :date_of_birth, :address, :phone, :email, :registration_number, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
