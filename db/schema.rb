# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_07_30_124420) do
  create_table "attendances", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id", null: false
    t.date "date"
    t.boolean "present"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_attendances_on_course_id"
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "entity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_courses_on_entity_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "responsible"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.integer "entity_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["entity_id"], name: "index_students_on_entity_id"
  end

  add_foreign_key "attendances", "courses"
  add_foreign_key "attendances", "students"
  add_foreign_key "courses", "entities"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "entities"
end
