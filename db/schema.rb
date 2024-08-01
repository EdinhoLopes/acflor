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

ActiveRecord::Schema[7.0].define(version: 2024_07_31_195507) do
  create_table "course_entities", force: :cascade do |t|
    t.integer "entity_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_entities_on_course_id"
    t.index ["entity_id"], name: "index_course_entities_on_entity_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "presences", force: :cascade do |t|
    t.date "date_of_day"
    t.boolean "presence"
    t.integer "teacher_course_id", null: false
    t.integer "student_course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_course_id"], name: "index_presences_on_student_course_id"
    t.index ["teacher_course_id"], name: "index_presences_on_teacher_course_id"
  end

  create_table "student_courses", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.date "date_of_birth"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_courses", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_teacher_courses_on_course_id"
    t.index ["teacher_id"], name: "index_teacher_courses_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "date_of_birth"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "rg"
    t.string "cpf"
    t.string "pis"
    t.string "cnpj"
    t.string "profession"
    t.string "teaching_experience"
    t.string "professional_experience"
    t.string "area_of_specialization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_entities", "courses"
  add_foreign_key "course_entities", "entities"
  add_foreign_key "presences", "student_courses"
  add_foreign_key "presences", "teacher_courses"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
  add_foreign_key "teacher_courses", "courses"
  add_foreign_key "teacher_courses", "teachers"
end
