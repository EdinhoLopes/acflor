json.extract! student_history, :id, :student, :references, :course_id, :grade, :created_at, :updated_at
json.url student_history_url(student_history, format: :json)
