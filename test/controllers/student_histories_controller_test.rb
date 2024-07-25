require "test_helper"

class StudentHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_history = student_histories(:one)
  end

  test "should get index" do
    get student_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_student_history_url
    assert_response :success
  end

  test "should create student_history" do
    assert_difference("StudentHistory.count") do
      post student_histories_url, params: { student_history: { course_id: @student_history.course_id, grade: @student_history.grade, references: @student_history.references, student: @student_history.student } }
    end

    assert_redirected_to student_history_url(StudentHistory.last)
  end

  test "should show student_history" do
    get student_history_url(@student_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_history_url(@student_history)
    assert_response :success
  end

  test "should update student_history" do
    patch student_history_url(@student_history), params: { student_history: { course_id: @student_history.course_id, grade: @student_history.grade, references: @student_history.references, student: @student_history.student } }
    assert_redirected_to student_history_url(@student_history)
  end

  test "should destroy student_history" do
    assert_difference("StudentHistory.count", -1) do
      delete student_history_url(@student_history)
    end

    assert_redirected_to student_histories_url
  end
end
