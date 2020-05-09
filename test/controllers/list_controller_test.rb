require 'test_helper'

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get list_create_url
    assert_response :success
  end

  test "should get edit" do
    get list_edit_url
    assert_response :success
  end

  test "should get delete" do
    get list_delete_url
    assert_response :success
  end

  test "should get index" do
    get list_index_url
    assert_response :success
  end

  test "should get show" do
    get list_show_url
    assert_response :success
  end

end
