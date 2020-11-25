require 'test_helper'

class MapRoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get map_routes_index_url
    assert_response :success
  end

  test "should get new" do
    get map_routes_new_url
    assert_response :success
  end

  test "should get create" do
    get map_routes_create_url
    assert_response :success
  end

  test "should get show" do
    get map_routes_show_url
    assert_response :success
  end

end
