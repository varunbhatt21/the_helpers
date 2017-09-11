require 'test_helper'

class SendmailersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sendmailer = sendmailers(:one)
  end

  test "should get index" do
    get sendmailers_url
    assert_response :success
  end

  test "should get new" do
    get new_sendmailer_url
    assert_response :success
  end

  test "should create sendmailer" do
    assert_difference('Sendmailer.count') do
      post sendmailers_url, params: { sendmailer: { birth_date: @sendmailer.birth_date, email: @sendmailer.email, name: @sendmailer.name } }
    end

    assert_redirected_to sendmailer_url(Sendmailer.last)
  end

  test "should show sendmailer" do
    get sendmailer_url(@sendmailer)
    assert_response :success
  end

  test "should get edit" do
    get edit_sendmailer_url(@sendmailer)
    assert_response :success
  end

  test "should update sendmailer" do
    patch sendmailer_url(@sendmailer), params: { sendmailer: { birth_date: @sendmailer.birth_date, email: @sendmailer.email, name: @sendmailer.name } }
    assert_redirected_to sendmailer_url(@sendmailer)
  end

  test "should destroy sendmailer" do
    assert_difference('Sendmailer.count', -1) do
      delete sendmailer_url(@sendmailer)
    end

    assert_redirected_to sendmailers_url
  end
end
