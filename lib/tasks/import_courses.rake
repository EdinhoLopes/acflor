namespace :import do
  desc "Importar dados Cursos"
  task courses: :environment do 
    require 'csv'
  
    csv_file_path = Rails.root.join('lib/assets/add_courses.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|
      begin

        entity = Entity.find(row['entity_id'])

          Course.create!(
            course_name: row['course_name'],
            entity: entity
          )

        rescue ActiveRecord::RecordNotFound
          puts "Entity com ID #{row['entity_id']} não encontrado. Course #{row['course_name']} não criado."
        rescue ActiveRecord::RecordInvalid => e
          puts "Erro ao criar curso #{row['course_name']}: #{e.message}"
        end
      end

    puts "Importação concluída!"
  end
end  
