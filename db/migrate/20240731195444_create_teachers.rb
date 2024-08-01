class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :date_of_birth
      t.string :address
      t.string :phone
      t.string :email
      t.string :rg
      t.string :cpf
      t.string :pis
      t.string :cnpj
      t.string :profession
      t.string :teaching_experience
      t.string :professional_experience
      t.string :area_of_specialization

      t.timestamps
    end
  end
end
