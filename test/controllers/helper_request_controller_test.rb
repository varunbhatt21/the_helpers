require 'test_helper'

class HelperRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get helper_request_index_url
    assert_response :success
  end

  test "should get show" do
    get helper_request_show_url
    assert_response :success
  end

  test "should get new" do
    get helper_request_new_url
    assert_response :success
  end

  test "should get delete" do
    get helper_request_delete_url
    assert_response :success
  end

end
