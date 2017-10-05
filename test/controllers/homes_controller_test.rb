require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get homes_new_url
    assert_response :success
  end

  test "should get create" do
    get homes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get homes_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get homes_edit_url
    assert_response :success
  end

  test "should get update" do
    get homes_update_url
    assert_response :success
  end

end
