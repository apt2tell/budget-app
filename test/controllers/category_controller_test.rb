require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get category_index_url
    assert_response :success
  end

  test "should get show" do
    get category_show_url
    assert_response :success
  end

  test "should get new" do
    get category_new_url
    assert_response :success
  end

  test "should get create" do
    get category_create_url
    assert_response :success
  end

  test "should get destroy" do
    get category_destroy_url
    assert_response :success
  end
end
