require 'test_helper'

class DamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dams_new_url
    assert_response :success
  end

  test "should get create" do
    get dams_create_url
    assert_response :success
  end

  test "should get index" do
    get dams_index_url
    assert_response :success
  end

  test "should get show" do
    get dams_show_url
    assert_response :success
  end

  test "should get edit" do
    get dams_edit_url
    assert_response :success
  end

  test "should get update" do
    get dams_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dams_destroy_url
    assert_response :success
  end

end
