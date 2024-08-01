require "test_helper"

class CourseEntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_entity = course_entities(:one)
  end

  test "should get index" do
    get course_entities_url
    assert_response :success
  end

  test "should get new" do
    get new_course_entity_url
    assert_response :success
  end

  test "should create course_entity" do
    assert_difference("CourseEntity.count") do
      post course_entities_url, params: { course_entity: { course_id: @course_entity.course_id, entity_id: @course_entity.entity_id } }
    end

    assert_redirected_to course_entity_url(CourseEntity.last)
  end

  test "should show course_entity" do
    get course_entity_url(@course_entity)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_entity_url(@course_entity)
    assert_response :success
  end

  test "should update course_entity" do
    patch course_entity_url(@course_entity), params: { course_entity: { course_id: @course_entity.course_id, entity_id: @course_entity.entity_id } }
    assert_redirected_to course_entity_url(@course_entity)
  end

  test "should destroy course_entity" do
    assert_difference("CourseEntity.count", -1) do
      delete course_entity_url(@course_entity)
    end

    assert_redirected_to course_entities_url
  end
end
