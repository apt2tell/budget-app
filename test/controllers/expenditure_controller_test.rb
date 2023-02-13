require "test_helper"

class ExpenditureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expenditure_index_url
    assert_response :success
  end

  test "should get show" do
    get expenditure_show_url
    assert_response :success
  end

  test "should get new" do
    get expenditure_new_url
    assert_response :success
  end

  test "should get create" do
    get expenditure_create_url
    assert_response :success
  end

  test "should get destroy" do
    get expenditure_destroy_url
    assert_response :success
  end
end
