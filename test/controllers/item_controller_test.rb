require 'test_helper'

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get item_create_url
    assert_response :success
  end

  test "should get delete" do
    get item_delete_url
    assert_response :success
  end

  test "should get update" do
    get item_update_url
    assert_response :success
  end

  test "should get edit" do
    get item_edit_url
    assert_response :success
  end

  test "should get rescrap" do
    get item_rescrap_url
    assert_response :success
  end

end
