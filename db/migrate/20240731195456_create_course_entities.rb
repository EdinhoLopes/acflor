class CreateCourseEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :course_entities do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
