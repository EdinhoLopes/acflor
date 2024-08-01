require "application_system_test_case"

class CourseEntitiesTest < ApplicationSystemTestCase
  setup do
    @course_entity = course_entities(:one)
  end

  test "visiting the index" do
    visit course_entities_url
    assert_selector "h1", text: "Course entities"
  end

  test "should create course entity" do
    visit course_entities_url
    click_on "New course entity"

    fill_in "Course", with: @course_entity.course_id
    fill_in "Entity", with: @course_entity.entity_id
    click_on "Create Course entity"

    assert_text "Course entity was successfully created"
    click_on "Back"
  end

  test "should update Course entity" do
    visit course_entity_url(@course_entity)
    click_on "Edit this course entity", match: :first

    fill_in "Course", with: @course_entity.course_id
    fill_in "Entity", with: @course_entity.entity_id
    click_on "Update Course entity"

    assert_text "Course entity was successfully updated"
    click_on "Back"
  end

  test "should destroy Course entity" do
    visit course_entity_url(@course_entity)
    click_on "Destroy this course entity", match: :first

    assert_text "Course entity was successfully destroyed"
  end
end
