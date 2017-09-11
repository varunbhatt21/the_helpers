require 'test_helper'

class HelperTablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get helper_tables_index_url
    assert_response :success
  end

  test "should get show" do
    get helper_tables_show_url
    assert_response :success
  end

  test "should get new" do
    get helper_tables_new_url
    assert_response :success
  end

  test "should get edit" do
    get helper_tables_edit_url
    assert_response :success
  end

  test "should get delete" do
    get helper_tables_delete_url
    assert_response :success
  end

end
