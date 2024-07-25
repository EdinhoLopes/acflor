class CreateStudentHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :student_histories do |t|
      t.string :student
      t.string :references
      t.references :course, null: false, foreign_key: true
      t.decimal :grade

      t.timestamps
    end
  end
end
