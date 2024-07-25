class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :date_of_birth
      t.string :address
      t.string :phone
      t.string :email
      t.string :registration_number
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
    add_index :students, :registration_number, unique: true
  end
end
