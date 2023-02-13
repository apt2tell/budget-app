require 'test_helper'

class ExpendituresControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get expenditures_index_url
    assert_response :success
  end

  test 'should get show' do
    get expenditures_show_url
    assert_response :success
  end

  test 'should get new' do
    get expenditures_new_url
    assert_response :success
  end

  test 'should get create' do
    get expenditures_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get expenditures_destroy_url
    assert_response :success
  end
end
