namespace :import do
  desc "Importar dados de Entidade"
  task entities: :environment do 
    require 'csv'
  
    csv_file_path = Rails.root.join('lib/assets/add_entities.csv')
    CSV.foreach(csv_file_path, headers: true) do |row|
      Entity.create!(
        name: row['name'],
        responsible: row['responsible'],
        address: row['address'],
        phone: row['phone'],
        email: row['email']
      )
    end

    puts "Importação concluída!"
  end
end  