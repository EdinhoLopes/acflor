namespace :import do
  desc "Importar dados de Estudantes"
  task students: :environment do 
    require 'csv'
  
    csv_file_path = Rails.root.join('lib/assets/add_students.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|

        Student.create!(
          name: row['name'],
          cpf: row['cpf'],
          date_of_birth: row['date_of_birth'],
          address: row['address'],
          phone: row['phone'],
          email: row['email'],
        )
    end
      
   puts "Importação concluída!"
  end
end  
