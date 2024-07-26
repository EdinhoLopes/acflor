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

ActiveRecord::Schema[7.0].define(version: 2024_07_24_134157) do
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
    t.string "course_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_code"], name: "index_courses_on_course_code", unique: true
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "responsible"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_entities_on_email", unique: true
  end

  create_table "student_histories", force: :cascade do |t|
    t.string "student"
    t.string "references"
    t.integer "course_id", null: false
    t.decimal "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_histories_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "registration_number"
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["registration_number"], name: "index_students_on_registration_number", unique: true
  end

  add_foreign_key "attendances", "courses"
  add_foreign_key "attendances", "students"
  add_foreign_key "student_histories", "courses"
  add_foreign_key "students", "courses"
end
