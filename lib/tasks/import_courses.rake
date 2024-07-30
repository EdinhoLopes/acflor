namespace :import do
  desc "Importar dados Cursos"
  task courses: :environment do 
    require 'csv'
  
    csv_file_path = Rails.root.join('lib/assets/add_courses.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|
      Course.create!(
        course_name: row['course_name'],
        course_code: row['course_code']
      )
    end

    puts "Importação concluída!"
  end
end  
