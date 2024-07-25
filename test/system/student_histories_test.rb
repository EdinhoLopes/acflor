require "application_system_test_case"

class StudentHistoriesTest < ApplicationSystemTestCase
  setup do
    @student_history = student_histories(:one)
  end

  test "visiting the index" do
    visit student_histories_url
    assert_selector "h1", text: "Student histories"
  end

  test "should create student history" do
    visit student_histories_url
    click_on "New student history"

    fill_in "Course", with: @student_history.course_id
    fill_in "Grade", with: @student_history.grade
    fill_in "References", with: @student_history.references
    fill_in "Student", with: @student_history.student
    click_on "Create Student history"

    assert_text "Student history was successfully created"
    click_on "Back"
  end

  test "should update Student history" do
    visit student_history_url(@student_history)
    click_on "Edit this student history", match: :first

    fill_in "Course", with: @student_history.course_id
    fill_in "Grade", with: @student_history.grade
    fill_in "References", with: @student_history.references
    fill_in "Student", with: @student_history.student
    click_on "Update Student history"

    assert_text "Student history was successfully updated"
    click_on "Back"
  end

  test "should destroy Student history" do
    visit student_history_url(@student_history)
    click_on "Destroy this student history", match: :first

    assert_text "Student history was successfully destroyed"
  end
end
