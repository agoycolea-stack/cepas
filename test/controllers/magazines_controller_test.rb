require 'test_helper'

class MagazinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get magazines_new_url
    assert_response :success
  end

  test "should get create" do
    get magazines_create_url
    assert_response :success
  end

  test "should get index" do
    get magazines_index_url
    assert_response :success
  end

  test "should get edit" do
    get magazines_edit_url
    assert_response :success
  end

  test "should get update" do
    get magazines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get magazines_destroy_url
    assert_response :success
  end

end
