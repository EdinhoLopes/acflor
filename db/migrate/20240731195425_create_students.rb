class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :cpf
      t.date :date_of_birth
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
