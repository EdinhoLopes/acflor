require "application_system_test_case"

class TeacherCoursesTest < ApplicationSystemTestCase
  setup do
    @teacher_course = teacher_courses(:one)
  end

  test "visiting the index" do
    visit teacher_courses_url
    assert_selector "h1", text: "Teacher courses"
  end

  test "should create teacher course" do
    visit teacher_courses_url
    click_on "New teacher course"

    fill_in "Course", with: @teacher_course.course_id
    fill_in "Teacher", with: @teacher_course.teacher_id
    click_on "Create Teacher course"

    assert_text "Teacher course was successfully created"
    click_on "Back"
  end

  test "should update Teacher course" do
    visit teacher_course_url(@teacher_course)
    click_on "Edit this teacher course", match: :first

    fill_in "Course", with: @teacher_course.course_id
    fill_in "Teacher", with: @teacher_course.teacher_id
    click_on "Update Teacher course"

    assert_text "Teacher course was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher course" do
    visit teacher_course_url(@teacher_course)
    click_on "Destroy this teacher course", match: :first

    assert_text "Teacher course was successfully destroyed"
  end
end
