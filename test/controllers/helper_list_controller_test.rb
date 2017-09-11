require 'test_helper'

class HelperListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get helper_list_index_url
    assert_response :success
  end

  test "should get show" do
    get helper_list_show_url
    assert_response :success
  end

  test "should get new" do
    get helper_list_new_url
    assert_response :success
  end

  test "should get edit" do
    get helper_list_edit_url
    assert_response :success
  end

  test "should get delete" do
    get helper_list_delete_url
    assert_response :success
  end

end
