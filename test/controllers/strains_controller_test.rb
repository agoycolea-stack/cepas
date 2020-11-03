require 'test_helper'

class StrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get strains_new_url
    assert_response :success
  end

  test "should get create" do
    get strains_create_url
    assert_response :success
  end

  test "should get index" do
    get strains_index_url
    assert_response :success
  end

  test "should get edit" do
    get strains_edit_url
    assert_response :success
  end

  test "should get update" do
    get strains_update_url
    assert_response :success
  end

  test "should get destroy" do
    get strains_destroy_url
    assert_response :success
  end

end
