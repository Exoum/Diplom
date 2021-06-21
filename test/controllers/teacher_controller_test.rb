require "test_helper"

class TheacherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get theacher_index_url
    assert_response :success
  end
end
