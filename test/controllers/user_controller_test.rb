require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get user_name_url
    assert_response :success
  end
end
