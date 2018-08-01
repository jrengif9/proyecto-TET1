require 'test_helper'

class PositionControllerTest < ActionDispatch::IntegrationTest
  test "should get getposition" do
    get position_getposition_url
    assert_response :success
  end

  test "should get save" do
    get position_save_url
    assert_response :success
  end

  test "should get show" do
    get position_show_url
    assert_response :success
  end

end
