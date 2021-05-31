require "test_helper"

class ParentsControllerTest < ActionDispatch::IntegrationTest
  test "should get parentProfile" do
    get parents_parentProfile_url
    assert_response :success
  end
end
