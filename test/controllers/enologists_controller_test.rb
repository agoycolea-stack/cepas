require 'test_helper'

class EnologistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get enologists_new_url
    assert_response :success
  end

  test "should get create" do
    get enologists_create_url
    assert_response :success
  end

  test "should get index" do
    get enologists_index_url
    assert_response :success
  end

  test "should get edit" do
    get enologists_edit_url
    assert_response :success
  end

  test "should get update" do
    get enologists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get enologists_destroy_url
    assert_response :success
  end

end
