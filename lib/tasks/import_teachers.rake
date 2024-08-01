namespace :import do
  desc "Importar dados Teacher"
  task teachers: :environment do 
    require 'csv'
  
    csv_file_path = Rails.root.join('lib/assets/add_teachers.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|

      Teacher.create!(
        name: row['name'],
        date_of_birth: row['date_of_birth'],
        address: row['address'],
        phone: row['phone'],
        email: row['email'],
        rg: row['rg'],
        cpf: row['cpf'],
        pis: row['pis'],
        cnpj: row['cnpj'],
        profession: row['profession'],
        teaching_experience: row['teaching_experience'],
        professional_experience: row['professional_experience'],
        area_of_specialization: row['area_of_specialization']
      )
    end
    puts "Importação concluída!"
  end
end  
