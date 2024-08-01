class CreatePresences < ActiveRecord::Migration[7.0]
  def change
    create_table :presences do |t|
      t.date :date_of_day
      t.boolean :presence
      t.references :teacher_course, null: false, foreign_key: true
      t.references :student_course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
