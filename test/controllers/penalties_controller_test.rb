require 'test_helper'

class PenaltiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get penalties_index_url
    assert_response :success
  end

  test "should get new" do
    get penalties_new_url
    assert_response :success
  end

  test "should get create" do
    get penalties_create_url
    assert_response :success
  end

  test "should get show" do
    get penalties_show_url
    assert_response :success
  end

  test "should get destroy" do
    get penalties_destroy_url
    assert_response :success
  end

end
