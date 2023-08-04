require 'test_helper'

class SplashesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get splashes_index_url
    assert_response :success
  end
end
