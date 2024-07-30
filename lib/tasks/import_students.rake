namespace :import do
  desc "Importar dados de Estudantes"
  task students: :environment do 
    require 'csv'
  
    csv_file_path = Rails.root.join('lib/assets/add_students.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|
      begin

        course = Course.find(row['course_id'])

        Student.create!(
          name: row['name'],
          date_of_birth: row['date_of_birth'],
          address: row['address'],
          phone: row['phone'],
          email: row['email'],
          registration_number: row['registration_number'],
          course: course
        )

      rescue ActiveRecord::RecordNotFound
        puts "Curso com ID #{row['course_id']} não encontrado. Estudante #{row['name']} não criado."
      rescue ActiveRecord::RecordInvalid => e
        puts "Erro ao criar estudante #{row['name']}: #{e.message}"
      end

    end
      
   puts "Importação concluída!"
  end
end  
