require "test_helper"

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get course" do
    get courses_course_url
    assert_response :success
  end
end
